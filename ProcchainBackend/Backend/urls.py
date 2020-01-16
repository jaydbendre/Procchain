from django.urls import path
from . import views

urlpatterns =[
    #Utility
    path('',views.index,name = "index"),#Landing Page
    path('auth-login/', views.authLogin, name = "authLogin"),#Render login
    path('login/', views.login ,name = "login"),#Login Functionality
    path("logout/", views.logout, name = "logout"),
    path("sendOTP/",views.sendOTP,name = "sendOTP"),
    
    # Dont know what this is tbh 
    # path('Supplier', views.vendor,name = "supplier"),
    
    #Vendor
    path("Vendor/",views.vendor, name = "vendor"),
    path("Vendor/view_tenders" , views.view_tenders , name = "view_tenders"),#list of all active tenders
    path("Vendor/tender/<int:tender_id>" , views.tender , name = "view_tender"),
    path("Vendor/tender/<int:tender_id>/make_bids" , views.make_bids , name = "make_bids"),
    
    #GAIL
    path('GailOrg/', views.gailOrg,name = "gailorg"), 
    path("GailOrg/upload-tender/", views.uploadTenderRender, name = "upload-tender"),
    path("GailOrg/tender/make_bids/" , views.make_bids, name = "make_bids"),
    path('GailOrg/view-tenders/' , views.view_tenders_org , name = "view_tender_org"),
    path('GailOrg/view-tender-detail/' , views.view_tender_detail , name = "view_tender_detail"),
    path('GailOrg/view-bids/', views.view_bids, name = "view_bids"),
    
    #MiddleMan
    path("Middleman/", views.middleman, name = "middleman"),
     
    #testing
    path('render_file_upload/' , views.render_file , name = "render_upload"),
    path('file_upload/' , views.tender_file_upload , name = "file_upload"),
    path('testing/', views.test, name = "testing"),
   
] 
