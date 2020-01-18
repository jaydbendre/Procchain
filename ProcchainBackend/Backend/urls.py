from django.urls import path
from . import views

urlpatterns =[

    path('',views.index,name = "index"),
    path('login/', views.login ,name = "login"),
    # path('user/<int:pk>',views.UserView.as_view()),
    # path('tender_info/<int:tender_id>',views.TenderView.as_view()),
    path('vendor/', views.vendor , name = 'vendors_index'),
    path('vendor/browse_tenders/', views.browse_tenders , name = 'browse_tenders'),
    path('vendor/view_bids/', views.view_bids , name = 'view_bids'),
    path('vendor/view_bids/shipment_details/', views.shipment_details , name = 'shipment_details'),
  
    #Utility
    path('',views.index,name = "index"),#Landing Page
    path('auth-login/', views.authLogin, name = "authLogin"),#Render login
    path('login/', views.login ,name = "login"),#Login Functionality
    path("logout/", views.log_out, name = "logout"),
    path("sendOTP/",views.sendOTP,name = "sendOTP"),
    path('auth-register/', views.authRegister, name = "authRegister"),
    
    # Dont know what this is tbh 
    # path('Supplier', views.vendor,name = "supplier"),
    
    #Vendor
    path("Vendor/",views.vendor, name = "vendor"),
    path("Vendor/view_tenders" , views.view_tenders , name = "view_tenders"),#list of all active tenders
    path("Vendor/tender/<int:tender_id>" , views.tender , name = "view_tender"),
    path("Vendor/tender/<int:tender_id>/make_bids" , views.make_bids , name = "make_bids"),
    path("Vendor/tender/<int:tender_id>/add_bids" , views.add_bids , name = "add_bids"),
    path("Vendor/EditProfile" , views.vendor_edit_profile, name =  "edit_profile"),
    
    #GAIL
    path('GailOrg/', views.gailOrg,name = "gailorg"), 
    path("GailOrg/upload-tender/", views.uploadTenderRender, name = "upload-tender"),
    path("GailOrg/upload-file" , views.tender_file_upload , name = "tender-file-upload"),
    path("GailOrg/tender/make_bids/" , views.make_bids, name = "make_bids"),
    path('GailOrg/view-tenders/' , views.view_tenders_org , name = "view_tender_org"),
    path('GailOrg/view-tender-detail/' , views.view_tender_detail , name = "view_tender_detail"),
    path('GailOrg/view-bids/<slug:addr>/', views.view_bids, name = "view_bids"),
    path('get_locations/', views.get_locations, name = "get_locations"),
    path('gail_edit_profile', views.gail_edit_profile, name = 'gail_edit_profile'),
    
    #MiddleMan
    path("Middleman/", views.middleman, name = "middleman"),
    path("Middleman/history" , views.middleman_history , name= "middleman_history"),
    #testing
    path('render_file_upload/' , views.render_file , name = "render_upload"),
    path('file_upload/' , views.tender_file_upload , name = "file_upload"),
    path('testing/', views.test, name = "testing"),
    path('Middleman/EditProfile', views.middleman_edit_profile, name = 'middleman_edit_profile'),
   
] 
