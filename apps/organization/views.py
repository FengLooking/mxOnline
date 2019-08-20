from django.shortcuts import render
from django.contrib.auth.hashers import make_password
from django.views.generic.base import View
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.urls import reverse

# Create your views here.


class OrgView(View):
    """
    课程机构列表
    """
    def get(self, request):
        return render(request, 'org-list.html', {})