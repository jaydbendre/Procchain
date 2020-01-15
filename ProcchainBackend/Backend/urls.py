from django.urls import path
from . import views

urlpatterns =[
    path('',views.index,name = "index"),
    path('login/', views.login ,name = "login"),
    path('user/<int:pk>',views.UserView.as_view()),
    path('tender_info/<int:tender_id>',views.TenderView.as_view()),
    path('vendor/', views.vendor , name = 'vendors_index'),
    path('vendor/browse_tenders', views.browse_tenders , name = 'browse_tenders')
 ] 