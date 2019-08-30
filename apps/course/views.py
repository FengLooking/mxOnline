from django.shortcuts import render
from django.contrib.auth.hashers import make_password
from django.views.generic.base import View
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.urls import reverse

from .models import Course
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

# Create your views here.


class CourseListView(View):
    def get(self, request):
        all_course = Course.objects.all().order_by("-add_time")

        hot_courses = Course.objects.all().order_by("-click_nums")[:3]

        # 排名
        sort = request.GET.get('sort', '')
        if sort:
            if sort == 'students':
                all_course = all_course.order_by('-students')
            elif sort == 'hot':
                all_course = all_course.order_by('-click_nums')

        # 对课程进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(object_list=all_course, per_page=3, request=request)

        courses = p.page(page)

        return render(request, 'course-list.html', {
            "all_course": courses,
            "sort": sort,
            "hot_courses": hot_courses
        })