from django.shortcuts import render
from django.contrib.auth.hashers import make_password
from django.views.generic.base import View
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.urls import reverse

from .models import CityDict
from .models import CourseOrg
from .models import Teacher
# Create your views here.


class OrgView(View):
    """
    function: 课程机构列表
    """
    def get(self, request):
        # 课程机构
        all_orgs = CourseOrg.objects.all()
        org_nums = all_orgs.count()
        print('all nums is: %s' % org_nums)
        # 城市
        all_citys = CityDict.objects.all()
    
        return render(request, 'org-list.html', {
            'all_orgs':all_orgs,
            'all_citys':all_citys,
            'org_nums':org_nums
        })