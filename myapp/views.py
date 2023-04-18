from django.shortcuts import render
from django.http.response import HttpResponse
# Create your views here.
import json, os

def home(request):
    s = 'My first django app from cloud foundry'
    if (os.getenv('VCAP_APPLICATION')):
        vcap = os.getenv('VCAP_APPLICATION')
        s += '<br/><br/><h1>VCAP variables</h1>' + vcap
    return HttpResponse(s)