# from django.test import TestCase

# # Create your tests here.
# class Register(APIView):
#     "Register new users"
    
#     def post(request):
#         with connection.cursor as cursor():
#             data = dict(request.data)

#             email = data['email']
#             password = data["password"]
#             details = ""
#             fname = data['fname']
#             lname = data['lname']

#             if email!='' and password!='' and fname!="" and lname!="":

#             	sql = 'INSERT INTO users(fname , lname , email , details , password) VALUES ({},{},{},{})'.format(fname , lname , details , email , password)
#             	cursor.execute(sql)

#             	response_dict = {"basic_info" : "successful"}

#             	""" vendor """
#             	vendor_name  = data['vendor_name']
#             	location_id  = data['location_id']
#             	vendor_type	 = data['type']
#             	contact_head = data['contact_head']
#             	verified_by	 = data['verified_by']
#             	verified_at  = datetime.timestamp(now)
#             	on_chain 	 = data['on_chain']
#             	document 	 = data['document']

#             	sql = 'INSERT INTO vendor(fname , lname , email , details , password) VALUES ({},{},{},{})'.format(fname , lname , details , email , password)
#             	cursor.execute(sql)

#             	""" gail """
#             	head 		= data['head']
#             	details 	= ""
#             	zone_id 	= data['zone_id']
#             	sub_zone_id = data['sub_zone_id']
#             	location_id = data['location_id']
#             	eth_addr	= data['eth_addr']

#             	""" middleman """
#             	middle_name 	= data['middle_name']
#             	middle_company 	= data['middle_company']
#             	auth_type 		= data['auth_type']
#             	middle_type		= data['middle_type']
#             	source_id 		= data['source_id']
#             	destination_id 	= data['destination_id']
#             	verified_by 	= data['verified_by']
#             	verified_at 	= datetime.timestamp(now)

#             	""" admin """



#             else:
#             	return Response("error")