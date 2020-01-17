from django.shortcuts import render, redirect
from django.http import HttpResponse, JsonResponse
from django.db import connection
from django.contrib.auth import authenticate
from django.conf import settings
from django.views.decorators.csrf import csrf_protect
from django.core.mail import send_mail, send_mass_mail
from django.template.loader import get_template
from django.contrib.auth import logout
from django.template import Context
from jose import jws

from rest_framework import status ,exceptions
from rest_framework.decorators import api_view,permission_classes
from rest_framework.response import Response
from rest_framework.views import APIView,Response
from django.core.files.storage import FileSystemStorage 
import datetime
import json
import hashlib
import os
import requests
import urllib.request
import urllib.parse
from functools import partial
import random
import pyotp
"""
Utility
"""
def index(request) : 
    return render(request,"LandingPage/index.html")

def authLogin(request):
    return render(request, 'Login/login.html')

def login(request) : 
    with connection.cursor() as cursor :
        email = request.POST["email"]
        password = request.POST["password"]
        
        # email  = "BertHorne@gmail.com" 
        # password = "pass1"
        if email !=''  or password != '':
            cursor.execute("SELECT * from users where email = '{}' and password = '{}' and active_status =1 ".format(email,password))
            user = cursor.fetchone()
            
            if len(user) == 0:
                return HttpResponse("No records found")
            user_data = {
                "uid" : user[0],
                "fname" : user[1],
                "lname" : user[2],
                "details" : eval(user[3]),
                "email" : email
            }
            
            request.session["email"] = email
            request.session["uid"] = user[0]
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
                        
                        request.session["user_data"] = user_data
                        return redirect("/GailOrg/")
                        # return redirect('GailOrg/', kwargs={"jwt" : jwt , "user_data" : user_data})
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
                        
                        request.session["user_data"] = user_data
                        return redirect("/Vendor/")
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
                        
                        request.session["user_data"] = user_data
                        return redirect("/Middleman/")
                    else:
                        """
                        Admin
                        """
                        jwt = jws.sign(user_data, 'seKre8',  algorithm='HS256')
                        
                        return HttpResponse("Error")
        else:
            return HttpResponse("Error : Email or password cannot be null")

def log_out(request):
    """ Logs out the user """
    logout(request)
    return redirect('/')


@csrf_protect
def sendOTP(request):
    with connection.cursor() as cursor :
        
        # cursor.execute("SELECT auth_type from middleman where middle_id = any( SELECT middle_id from user_middle_map where uid = {})".format(request.session["uid"]))
        
        # auth_type = cursor.fetchall()[0][0]
        
        # if auth_type == 0 :
        #     val = str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))
        #     otp = "Your OTP is : "+ val
        #     print(otp)
        #     data =  urllib.parse.urlencode({'apikey': "mJ1D4ri2AdQ-YOzrxeeKzfJGk3nXcMIYVEFzSYQXB1", 'numbers': "9082467851",
        #         'message' : otp})
        #     request.session["otp"] = otp
        #     data = data.encode('utf-8')
        #     request = urllib.request.Request("https://api.textlocal.in/send/?")
        #     f = urllib.request.urlopen(request, data)
        #     fr = f.read()
        #     print(fr)
        #     return JsonResponse({"otp" : otp, "value" : val})
        # else :
        val = str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))+str(random.randint(1,9))
        otp = "Your OTP is : " + val
        t = get_template("mail_otp.html").template
        c = Context({"otp" : otp}, autoescape = True)
        # html = render_to_string("mail_otp.html", {'otp': otp}, c).strip()
        send_mail(
            "OTP for user #{}".format(request.session["uid"]),
            otp,
            "wehire.sight@gmail.com",
            ['2017.harshita.singh@ves.ac.in', '2017.jay.bendre@gmail.com', '2017.sumedh.ghavat@gmail.com', '2017.vignesh.pillai@gmail.com'],
            fail_silently=False,
            html_message=t.render( context = c)
        )
        
        return JsonResponse({"otp" :otp})

"""
Testing
"""

def render_file(request) :
    return render(request,"testing/upload.html")

def test(request):
    return render(request, "Gail/Bids/BidsList.html")

"""
Vendor
"""
def vendor(request) : 
    return render(request,"Vendor/index.html")

def tender(request,tender_id) :
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from tender where tender_id = {} ".format(tender_id))
        tender_data = cursor.fetchall()[0]
        
        tender = {
            "tender_id" : tender_data[0],
            "file_path" : tender_data[1],
            "file_hash" : tender_data[2],
            "uploaded_at" : str(tender_data[3])
        }
        
        
        return render(request , "Vendor/tender.html" , {"tender" : tender})
def view_tenders(request):
    return render(request,"Vendor/view_tenders.html")

def make_bids(request,tender_id): 
    with connection.cursor() as cursor : 
        if request.method == "POST" and request.FILES.getlist('bids') : 
            folder = os.path.join(settings.BASE_DIR,"documents\\tenders\\{}\\bids\\".format(tender_id))
            cursor.execute("SELECT file_path , file_hash from tender where tender_id = {} ".format(tender_id))
            tender_data = cursor.fetchall()[0]
            file_path = eval(tender_data[0])
            file_hash = eval(tender_data[1])
            
            bids_path = []
            bids_hash = []
            for f in request.FILES.getlist('bids'):
                fs = FileSystemStorage(location=folder)  
                filename = fs.save(f.name, f)
                file_url = fs.url(filename)
                hasher = hashlib.md5()
                block_size=65536
                for buf in iter(partial(f.read, block_size), b''):
                    hasher.update(buf)

                bid_hash = hasher.hexdigest()
                
                bids_path.append("documents\\tenders\\{}\\bids\\{}".format(tender_id,file_url))
                bids_hash.append(bid_hash)
            
            for bid_path in bids_path : 
                file_path["bids"].append(bid_path)
            
            for bid_hash in bids_hash : 
                file_hash["bids"].append(bid_hash)
            
            file_path = str(file_path)
            file_hash = str(file_hash)
            
            cursor.execute("UPDATE tender set file_path = '{}' , file_hash = '{}' , uploaded_at = '{}' ,uploaded_by = '{}' where tender_id = {} ".format(file_path,file_hash,datetime.datetime.now(),request.session["uid"], tender_id))
        
        return redirect("/Vendor/tender/{}".format(tender_id))
        return HttpResponse(bids_path,bids_hash)


"""
Gail Org
"""
def gailOrg(request, **kwargs):
    print(kwargs)
    return render(request, 'Gail/index.html', kwargs)

def uploadTenderRender(request):
    """ Renders Tender Form """
    return render(request, 'Gail/Tender/UploadTenderForm.html')


def organisation_retrieve(request, org_id):
    """
    Obtaining organization details 
    """

    with connection.cursor() as cursor:
        cursor.execute("SELECT * from organisation where org_id = {}".format(org_id))
        org = cursor.fetchall()[0]

        if len(org) != 0:
            organization = org[0]
            org_head_id = org[1]
            org_details = org[2]
            org_zone = org[3]
            org_subzone = org[4]
            org_location = org[5]
            org_eth = org[6]
            
            cursor.execute("select * from zone where zone_id = {}".org[3])
            zone = cursor.fetchall()[0]
            
            if len(zone) !=0:
                zone_name = zone[1]

            cursor.execute("select * from sub_zone where sub_zone_id = {}".org[4])
            sub_zone = cursor.fetchall()[0]

            if len(sub_zone) !=0:
                sub_zone_name = sub_zone[1]

            cursor.execute("select * from location where location_id = {}".org[5])
            location = cursor.fetchall()[0]

            if len(location) !=0:
                location_name = location[1]

            cursor.execute("select fname, lname from users where uid = {}".format(org_head_id))
            head = cursor.fetchall[0]
            if len(head) !=0:
                head_name = head[0] + head[1]

            org_info = {
                "org_head": head_name,
                "org_details": org_details,
                "org_zone": zone_name,
                "org_subzone": sub_zone_name,
                "org_loc": location_name,
                "org_eth": org_eth
            }

            return JsonResponse(org_info)
        else:
            return JsonResponse({"Failure": "Failed to retrieve record"})

def organisation_create(request):
    """
    Creating a new organization
    """

    with connection.cursor() as cursor:
        org = dict(request.data)

        if org != None:
            org_head_fname = org["org_head_fname"]
            org_head_lname = org["org_head_lname"]
            org_details = org["org_details"]
            org_zone_name = org["org_zone"]
            org_subzone_name = org["org_subzone"]
            org_location = org["location_name"]
            org_eth = org["org_eth"]

        if org_head_fname == '' or org_head_lname== '' or org_zone_name == '' or org_subzone_name == '' or org_location == '' or org_eth == '' or  org_details == '':
            return Response({'Error': 'Fields cannot be blank'})
        else:
            cursor.execute("select zone_id from zone where zone_name = {}".format(org_zone))
            zone = cursor.fetchall[0]
            if len(head)!=0:
                zone_id = zone[0]
            
            cursor.execute("select sub_zone_id from sub_zone where sub_zone_name = {}".format(org_subzone_name))
            sub_zone = cursor.fetchall[0]
            if len(head)!=0:
                sub_zone_id = sub_zone[0]
            
            cursor.execute("select location_id from location where location_name = {}".format(org_location))
            location = cursor.fetchall[0]
            if len(head)!=0:
                location_id = location_id[0]

            cursor.execute("select uid from users where fname = {} and lname = {}".format(org_head_fname,org_head_lname))
            head_id = cursor.fetchall[0]
            if len(head)!=0:
                head = head_id[0]

            cursor.execute('INSERT into organisation(head,org_details, zone_id, sub_zone_id, location_id, eth_address) values({},{},{},{},{},{})'.format(head,org_details,zone_id, sub_zone_id, location_id, org_eth))
            return Response({'Success':'Organisation added successfully'})

def view_tenders_org(request) :
    """ Tender List is seen """
    return render(request, "Gail/Tender/TenderList.html")

def organisation_update(request, org_id):
    """
    Updating organization details
    """
    with connection.cursor() as cursor:
        org = dict(request.data)
        org_head_fname = org["org_head_fname"]
        org_head_lname = org["org_head_lname"]
        org_details = org["org_details"]

        if org_head_fname != '' :
            cursor.execute("select uid from users where fname = {} and lname = {}".format(org_head_fname,org_head_lname))
            head_id = cursor.fetchall[0]
            if len(head)!=0:
                head = head_id[0]
                cursor.execute('update organisation set head = {} where org_id = {}'.format(head,org_id))
            
            if org_zone != '' :
                cursor.execute("select zone_id from zone where zone_name = {}".format(org_zone))
                zone = cursor.fetchall[0]
                if len(head)!=0:
                    zone_id = zone[0]
                
                cursor.execute("select sub_zone_id from sub_zone where sub_zone_name = {}".format(org_subzone_name))
                sub_zone = cursor.fetchall[0]
                if len(head)!=0:
                    sub_zone_id = sub_zone[0]
                
                cursor.execute("select location_id from location where location_name = {}".format(org_location))
                location = cursor.fetchall[0]
                if len(head)!=0:
                    location_id = location_id[0]

                cursor.execute("update organisation set zone_id = '{}', sub_zone_id = '{}', location_id = '{}' where org_id = {}".format(zone_id,sub_zone_id,location_id,org_id))
                return Response({'Success': 'Updated successfully'})

def tender_file_upload(request) : 
    with connection.cursor() as cursor :
        cursor.execute("SELECT max(tender_id) from tender")
        tender_id = cursor.fetchall()[0][0] + 1
        uid = request.session["uid"]
        
        file_path = "documents\\\\tenders\\\\{}".format(tender_id)
        folder = os.path.join(settings.BASE_DIR , file_path)
        # return HttpResponse("Hello")
        if request.method == "POST" and request.FILES["myfile"] :
            myfile = request.FILES['myfile']
            # return HttpResponse("Hi")
            if (myfile.name).endswith(".pdf") :
                fs = FileSystemStorage(location=folder) #defaults to   MEDIA_ROOT  
                filename = fs.save(myfile.name, myfile)
                file_url = fs.url(filename)
                
                hasher = hashlib.md5()
                
                for buf in iter(partial(myfile.read,65536),b''):
                    hasher.update(buf)
                
                file_hash = hasher.hexdigest()
                
                cursor.execute("INSERT INTO tender(tender_id , file_path,file_hash,uploaded_at,uploaded_by) values({},'{}', '{}','{}',{})".format(tender_id , file_path , file_hash , datetime.datetime.now() , request.session["uid"]))
                
                return redirect("/GailOrg/upload-tender")
    # with connection.cursor() as cursor : 
    #     cursor.execute("SELECT max(tender_id) from tender")
    #     tender_id = cursor.fetchall()[0][0]
    #     uid = 1 
    #     file_path = 'documents\\tenders\\{}\\'.format(tender_id+1)
    #     folder=os.path.join(settings.BASE_DIR,'documents\\tenders\\{}\\'.format(tender_id+1)) 
        
    #     if request.method == 'POST' and request.FILES['myfile']:
    #         myfile = request.FILES['myfile']
    #         fs = FileSystemStorage(location=folder) #defaults to   MEDIA_ROOT  
    #         filename = fs.save(myfile.name, myfile)
    #         file_url = fs.url(filename)
            
    #         hasher = hashlib.md5()
    #         block_size=65536
    #         for buf in iter(partial(myfile.read, block_size), b''):
    #             hasher.update(buf)

    #         tender_hash = hasher.hexdigest()

    #         file_path = {
    #             "bids" : [],
    #             "tender" : 'documents\\\\tenders\\\\{}'.format(tender_id+1),
    #             "tender_file_name" : file_url,
    #             "uploaded_at" : []
    #         }
            
    #         file_path = str(file_path)
    #         file_hash = {
    #             "bids" : [],
    #             "tender" : hasher.hexdigest()
    #         }
    #         file_hash = str(file_hash)
    #         cursor.execute("INSERT INTO tender(tender_id,file_path,file_hash,uploaded_at,uploaded_by) values({},'{}','{}','{}',{})".format(tender_id+1,file_path,file_hash,datetime.datetime.now(),uid))
    #     return HttpResponse(hasher.hexdigest())

def view_tender_detail(request):
    """ 
        Views the tender & bid that was selected
        along with other details
    """
    return render(request, 'Gail/Bids/BidDetails.html')

def view_bids(request):
    """
        Renders bids made on a particular tender
    """
    return render(request, 'Gail/Bids/BidsList.html')

"""
Middleman
"""

def middleman(request):
    return render(request, 'Middleman/index.html')