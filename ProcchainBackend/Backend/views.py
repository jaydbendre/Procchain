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
Testing working of Djangox
"""
def index(request) :
    return HttpResponse("<div class = 'container col-md-3 mr-auto'>Testing</div>")

@api_view(["POST"])
def login(request):
    with connection.cursor() as cursor :
        data = dict(request.data)
        
        email = data["email"]
        password = data["password"]
        
        if email !=''  or password != '':
            cursor.execute("SELECT * from users where email = '{}' and password = '{}'".format(email,password))
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


from django.test import TestCase

# Create your tests here.
class Register(APIView):

    """Register new users"""

    def post(request):
        with connection.cursor as cursor():
            data = dict(request.data)

            email = data['email']
            password = data["password"]
            details = ""
            fname = data['fname']
            lname = data['lname']

            if email!='' and password!='' and fname!="" and lname!="":

                sql = 'INSERT INTO users(fname , lname , email , details , password) VALUES ({},{},{},{})'.format(fname , lname , details , email , password)
                cursor.execute(sql)

                response_dict = {"basic_info" : "successful"}

                """ vendor """
                vendor_name  = data['vendor_name']
                location_id  = data['location_id']
                vendor_type  = data['type']
                contact_head = data['contact_head']
                verified_by  = data['verified_by']
                verified_at  = datetime.timestamp(now)
                on_chain     = data['on_chain']
                document     = data['document']

                sql = 'INSERT INTO vendor(vendor_name , location_id , vendor_type , contact_head , verified_by , verified_at , on_chain , document) VALUES ({},{},{},{},{},{},{},{},)'.format(vendor_name , location_id , vendor_type , contact_head , verified_by , verified_at , on_chain , document )
                cursor.execute(sql)

                response_dict['details'] = 'successful'

                return Response(response_dict)

            else:
                return Response("error")