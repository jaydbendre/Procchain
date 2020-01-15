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
@api_view(["POST"])
def login(request):
    # print(json.loads(request.body.decode()))
    # return Response({"Error" : "Email or password cannot be null"})
    with connection.cursor() as cursor :
        data = json.loads(request.body.decode())
        
        email = data["email"]
        password = data["password"]
        
        if email !=''  or password != '':
            cursor.execute("SELECT * from users where email = '{}' and password = '{}' and active_status =1 ".format(email,password))
            user = cursor.fetchone()
            
            user_data = {
                "uid" : user[0],
                "fname" : user[1],
                "lname" : user[2],
                "details" : user[3],
                "email" : email
            }
            
            cursor.execute("SELECT * from user_post_role_map where uid = '{}'".format(user_data["uid"]))
            role_data = cursor.fetchall()
            user_data["role"] = dict()
            for r in role_data :
                if r[2] not in user_data["role"].keys():
                    user_data["role"][str(r[2])] = {
                        "role_id" : [r[3]]
                    }
                else:
                    user_data["role"][str(r[2])]["role_id"].append(r[3])
                
                user_data["role"][str(r[2])]["role_id"] = sorted(user_data["role"][str(r[2])]["role_id"])
            # return Response(user_data)
            for role_id in user_data["role"].values():
                for role in role_id.values():
                    if role[0] in range(1,100):
                        """
                        GAIL
                        """
                        
                        cursor.execute("SELECT org_id from user_org_map where uid = {}".format(user_data["uid"]))
                        org_data = cursor.fetchall()
                        
                        cursor.execute("SELECT * from organisation where org_id = {}".format(org_data[0][0]))
                        org_data = cursor.fetchall()
                        user_data["org"] = {
                            "org_id" : org_data[0][0],
                            "details" : org_data[0][2],
                            "eth_addr" : org_data[0][6]
                        }
                        
                        cursor.execute("SELECT fname,lname from users where uid = {} ".format(org_data[0][1]))
                        head_data = cursor.fetchall()[0]
                        
                        user_data["org"]["head"] = head_data[0] + " "+ head_data[1]
                        
                        cursor.execute("SELECT location_name from location where location_id = {} ".format(org_data[0][5]))
                        loc = cursor.fetchall()[0][0]
                        
                        user_data["org"]["location"] = loc
                        
                        jwt = jws.sign(user_data, 'seKre8',  algorithm='HS256')
                        
                        return Response({"jwt" : jwt , "user_data" : user_data })
                    
                    elif role[0] in range(100,200):
                        """
                        Vendor
                        """
                        
                        cursor.execute("SELECT vendor_id from user_vendor_map where uid = {} ".format(user_data["uid"]))
                        vendor_id = cursor.fetchall()[0][0]
                        
                        cursor.execute("SELECT * from vendor where vendor_id = {} ".format(vendor_id))
                        vendor_data = cursor.fetchall()[0]
                        
                        user_data["vendor"] = {
                            "vendor_id" : vendor_id,
                            "vendor_name" : vendor_data[1],
                            "on_chain" : vendor_data[7],
                            "document" : vendor_data[8]
                        }
                        
                        cursor.execute("SELECT fname,lname from users where uid = {} ".format(vendor_data[4]))
                        head_data = cursor.fetchall()[0]
                        
                        user_data["vendor"]["contact_head"] = head_data[0] + " "+ head_data[1]
                        
                        cursor.execute("SELECT fname,lname from users where uid = {} ".format(vendor_data[5]))
                        head_data = cursor.fetchall()[0]
                        
                        user_data["vendor"]["verified_by"] = head_data[0] + " "+ head_data[1]
                        
                        cursor.execute("SELECT location_name from location where location_id = {} ".format(vendor_data[2]))
                        loc = cursor.fetchall()[0][0]
                        
                        user_data["vendor"]["location"] = loc
                        
                        jwt = jws.sign(user_data, 'seKre8',  algorithm='HS256')
                        
                        return Response({"jwt" : jwt , "user_data" : user_data })
                    elif role[0] in range(200,300):
                        """
                        Middle Man
                        """
                        cursor.execute("SELECT middle_id from user_middle_map where uid = {} ".format(user_data["uid"]))
                        middle_id = cursor.fetchall()[0][0]
                        
                        cursor.execute("SELECT * from middleman where middle_id = {} ".format(middle_id))
                        middle_data = cursor.fetchall()[0]
                        
                        user_data["middle_man"] = {
                            "middle_id" : middle_id,
                            "middle_name" : middle_data[1],
                            "middle_company" : middle_data[2],
                            "auth_type" : middle_data[3],
                        }
                        
                        cursor.execute("SELECT fname,lname from users where uid = {} ".format(middle_data[7]))
                        head_data = cursor.fetchall()[0]
                        
                        user_data["middle_man"]["verified"] = head_data[0] + " "+ head_data[1]
                        
                        cursor.execute("SELECT location_name from location where location_id = {} ".format(middle_data[5]))
                        loc = cursor.fetchall()[0][0]
                        
                        user_data["middle_man"]["source"] = loc
                        
                        cursor.execute("SELECT location_name from location where location_id = {} ".format(middle_data[6]))
                        loc = cursor.fetchall()[0][0]
                        
                        user_data["middle_man"]["destination"] = loc
                        
                        jwt = jws.sign(user_data, 'seKre8',  algorithm='HS256')
                        
                        return Response({"jwt" : jwt , "user_data" : user_data })
                    else:
                        """
                        Admin
                        """
                        jwt = jws.sign(user_data, 'seKre8',  algorithm='HS256')
                        
                        return Response({"jwt" : jwt , "user_data" : user_data })
        else:
            return Response({"Error" : "Email or password cannot be null"})
        
"""
Register
"""
@api_view(["POST"])
def register(request) :
    return Response({"Hi" : "Hey"})

"""
CRUD of users
"""
class UserView(APIView) :
    """
    Getting user details for edit profile
    """
    def get(self,request,pk,format=None):
       with connection.cursor() as cursor :
            cursor.execute("SELECT * from users where uid = {} ".format(pk))
            user = cursor.fetchall()
            
            if len(user) != 0:
                user = user[0]
                user_data = {
                    "fname" : user[1],
                    "lname" : user[2],
                    "details" : user[3],
                    "email" : user[4],
                    "password" : user[5]
                }
                
                return Response(user_data)
            else :
                return Response({"Error" : "No Records Found"})
        
        
    """
    To update an existing user
    """
    def post(self , request ,pk, format=None ):
        with connection.cursor() as cursor : 
            user_data = dict(request.data)
            
            if user_data != None:
                fname = user_data["fname"]
                lname = user_data["lname"]
                details = user_data["details"]
                email = user_data["email"]
                password = user_data["password"]
                
                if fname == '' or lname == '' or details == '' or email == '' or password == '' :
                    return Response({"Error" : "Fields cant be empty"})
                else:
                    cursor.execute("UPDATE users set fname = '{}' , lname = '{}' ,details = '{}' , email = '{}' , password = '{}' where uid = {}".format(fname,lname,details,email,password,pk))
                
                    return Response({"Success" : "Updated Successfully"})
            else :
                return Response({"Error" : "No Data found"})

    """
    Delete an User from the table ie. change active status
    """
    def delete(self,request,pk,format=None):
        with connection.cursor() as cursor :
            cursor.execute("UPDATE users set active_status = 0 where uid = {} ".format(pk))
            return Response({"Success" : "Record Deleted Successfully"})
