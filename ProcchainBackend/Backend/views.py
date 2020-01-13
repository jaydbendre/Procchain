from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from django.db import connection
from django.contrib.auth import authenticate

from jose import jws

from rest_framework import status ,exceptions
from rest_framework.decorators import api_view,permission_classes
from rest_framework.response import Response
from rest_framework.views import APIView,Response

import datetime
import json


"""
Testing working of Django
"""
def index(request) :
    return HttpResponse("<div class = 'container col-md-3 mr-auto'>Testing</div>")


"""
Login
"""
def login(request):
    with connection.cursor() as cursor :
        email = request.POST["email"]
        password = request.POST["password"]
        
        if email != ''  or password != '':
            cursor.execute("SELECT uid, fname , lname ,start_date,end_date from users where email = '{}' and password = '{}' ".format(email,password))
            result = cursor.fetchall()
            if len(result) !=0:
                user_details = {
                    "uid" : result[0][0],
                    "fname" : result[0][1],
                    "lname" : result[0][2],
                    "start_date" : result[0][3],
                    "end_date" : result[0][4],
                    "email" : email,
                    "password" : password,
                    "roles" : []
                }
                uid = result[0][0]
                cursor.execute("SELECT role_id from user_role_mapping where uid = {} ".result[0][0])
                roles = cursor.fetchall()
                user_details["roles"].append(role for role in roles[0])
                
                """
                Check if user in gail
                """
                
                if 6 in user_details["roles"] or 13 in user_details["roles"]:
                    cursor.execute("SELECT * from vendors where contact_head = {} ".format(uid))
                    vendor = cursor.fetchall()
                    
                    user_details["vendor"] = {
                        "vendor_id" : vendor[0][0],
                        "vendor_name" : vendor[0][1],
                        "number_of_centres" : vendor[0][3],
                        "centres" : vendor[0][4],
                        "verified_at" : vendor[0][7],
                        "documents" : vendor[0][8]
                    }
                    
                    cursor.execute("SELECT fname,lname from users where uid = {} ".format(vendor[0][2]))
                    contact_head = cursor.fetchall()[0]
                    user_details["vendor"]["contact_head"] = contact_head[0] + " " + contact_head[1]
                    
                    cursor.execute("SELECT fname,lname from users where uid = {} ".format(vendor[0][6]))
                    verified_by = cursor.fetchall()[0]
                    user_details["vendor"]["verified_by"] = verified_by[0] + " " + verified_by[1]
                    
                    jwt = jws.sign(user_details, 'seKre8',  algorithm='HS256')
                    
                    return Response({"jwt" : jwt, "user_details" : user_details})
                
                else:
                    cursor.execute("SELECT * from gail where head = {} or contact_head = {} ".format(uid,uid))
                    org_details = cursor.fetchall()
                    
                    user_details["gail"] = {
                        "org_id" : org_details[0][0],
                        "contact_details" : org_details[0][5],
                        "eth_address" : org_details[0][6]
                    }
                    
                    cursor.execute("SELECT fname,lname from users where uid = {}".format(org_details[0][1]))
                    head = cursor.fetchall()[0]
                    user_details["gail"]["head"] = head[0]+ " "+ head[1]
                    
                    cursor.execute("SELECT fname,lname from users where uid = {}".format(org_details[0][2]))
                    contact_head = cursor.fetchall()[0]
                    user_details["gail"]["contact_head"] = contact_head[0]+ " "+ contact_head[1]
                    
                    cursor.execute("SELECT location from zone_subzone_mapping where zone_id = {} and sub_zone_id = {} ".format(org_details[0][3],org_details[0][4]))
                    location = cursor.fetchall()[0][0]
                    user_details["gail"]["location"] = location
                    
                    jwt = jws.sign(user_details, 'seKre8',  algorithm='HS256')
                    return Response({"jwt" : jwt , "user_details" : user_details })
            else :
                cursor.execute("SELECT * from middleman where email = {}  and password = {}".format(email,password))
                middle_man = cursor.fetchall()
                if len(middle_man) != 0:
                    user_details = {
                        "middle_id" : middle_man[0][0],
                        "name" : middle_man[0][1],
                        "address": middle_man[0][4],
                        "other_details" : middle_man[0][6],
                        "email" : email
                    }
                    
                    jwt = jws.sign(user_details, 'seKre8',  algorithm='HS256')
                    
                    return Response({"jwt" : jwt , "user_details" : user_details})
                else:
                    return Response({"Error" : "Invalid Email or Password"})
        else:
            return Response({"error" : "Either Email or password is empty"})    
                     