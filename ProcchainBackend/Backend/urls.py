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
  
    path('render_file_upload/' , views.render_file , name = "render_upload"),
    path('file_upload/' , views.tender_file_upload , name = "file_upload"),
    # path('user/<int:pk>',views.UserView.as_view()),
    # path('tender_info/<int:tender_id>',views.TenderView.as_view())

    # path('user/<int:pk>',views.UserView.as_view()),
    # path('tender_info/<int:tender_id>',views.TenderView.as_view()),
    path('auth-login/', views.authLogin, name = "authLogin"),
    path('testing', views.test, name = "testing"),
    path('GailOrg/', views.gailOrg,name = "gailorg"),
    path('Supplier', views.vendor,name = "supplier"),
    path("Middleman/", views.middleman, name = "middleman"),

] 
