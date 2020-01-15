from django.urls import path
from . import views

urlpatterns =[
    path('',views.index,name = "index"),
    path('login/', views.login ,name = "login"),
    path('user/<int:pk>',views.UserView.as_view()),
    path('tender_info/<int:tender_id>',views.TenderView.as_view()),
    path('auth-login/', views.authLogin, name = "authLogin"),
    path('testing', views.test, name = "testing"),
 ] 