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

def index(request) :
    return HttpResponse("<div class = 'col-md-3 mr-auto'>Testing</div>")

