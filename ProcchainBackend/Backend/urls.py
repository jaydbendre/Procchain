from django.urls import path
from . import views

urlpatterns =[
    path('',views.index,name = "index"),
    path('login/', views.login ,name = "login"),
<<<<<<< HEAD
    path('render_file_upload/' , views.render_file , name = "render_upload"),
    path('file_upload/' , views.tender_file_upload , name = "file_upload")
    # path('user/<int:pk>',views.UserView.as_view()),
    # path('tender_info/<int:tender_id>',views.TenderView.as_view())
=======
    path('user/<int:pk>',views.UserView.as_view()),
    path('tender_info/<int:tender_id>',views.TenderView.as_view()),
    path('testing/', views.test, name = "test"),
>>>>>>> a6ca54347ac8cc91f27c4c8581bcf28b6e8692ce
 ] 