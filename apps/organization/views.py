from django.shortcuts import render
from django.contrib.auth.hashers import make_password
from django.views.generic.base import View
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.urls import reverse

from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

from .models import CityDict
from .models import CourseOrg
from .models import Teacher
from .forms import UserAskForm
# Create your views here.


class OrgView(View):
    """
    function: 课程机构列表
    """
    def get(self, request):
        # 课程机构
        all_orgs = CourseOrg.objects.all()
        hot_orgs = all_orgs.order_by('-click_nums')[:3]
        # 城市
        all_citys = CityDict.objects.all()
        # 取出筛选城市
        city_id = request.GET.get('city', '')
        if city_id:
            all_orgs = all_orgs.filter(city_id=int(city_id))

        # 机构类别筛选
        category = request.GET.get('ct', '')
        if category:
            all_orgs = all_orgs.filter(category=category)
        
        # 排名
        sort = request.GET.get('sort', '')
        if sort:
            if sort == 'students':
                all_orgs = all_orgs.order_by('-students')
            elif sort == 'courses':
                all_orgs = all_orgs.order_by('-courses_nums')

        org_nums = all_orgs.count()
        print('all nums is: %s' % org_nums)

        # 对课程机构进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(object_list=all_orgs, per_page=5, request=request)

        orgs = p.page(page)
    
        return render(request, 'org-list.html', {
            'all_orgs':orgs,
            'all_citys':all_citys,
            'org_nums':org_nums,
            'city_id': city_id,
            'category': category,
            'hot_orgs': hot_orgs,
            'sort': sort
        })


class AddUserAskView(View):
    """
    用户咨询
    """
    def post(self, request):
        userask_form = UserAskForm(request.POST)
        if userask_form.is_valid():
            print('**************form 正确 保存至数据库*****************')
            user_ask = userask_form.save(commit=True)
            return HttpResponse('{"status": "success"}', content_type="application/json")
        else:
            print('================添加出错=============')
            return HttpResponse('{"status": "fail", "msg": "添加出错"}', content_type="application/json")