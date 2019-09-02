from django.shortcuts import render
from django.contrib.auth.hashers import make_password
from django.views.generic.base import View
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.urls import reverse

from .models import Course
from .models import CourseResource
from operation.models import UserFavorite
from operation.models import CourseComments
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


class CourseDetailView(View):
    """
    课程详情页
    """
    def get(self,request, course_id):
        course = Course.objects.get(id=int(course_id))

        # 课程点击数
        course.click_nums += 1
        course.save()

        has_fav_course = False
        has_fav_org = False
        # 判断用户是否登录
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course.id, fav_type=1):
                has_fav_course = True

            if UserFavorite.objects.filter(user=request.user, fav_id=course.course_org.id, fav_type=2):
                has_fav_org = True

        # 相关课程推荐
        tag = course.tag
        if tag:
            relate_courses = Course.objects.filter(tag=tag).exclude(name=course.name)[:1]
        else:
            relate_courses = []
        
        return render(request, 'course-detail.html', {
            "course": course,
            "relate_courses": relate_courses,
            "has_fav_course": has_fav_course,
            "has_fav_org": has_fav_org
        })


class CourseVideoView(View):
    """
    课程章节信息
    """
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))

        all_resourses = CourseResource.objects.filter(course=course)

        return render(request, 'course-video.html', {
            "course": course,
            "all_resourses": all_resourses
        })


class CommentsView(View):
    """
    课程评论
    """
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        all_resourses = CourseResource.objects.filter(course=course)
        all_comments = CourseComments.objects.all()

        return render(request, 'course-comment.html', {
            "course": course,
            "all_resourses": all_resourses,
            "all_comments": all_comments
        })


class AddCommentsView(View):
    """
    用户发表课程评论
    """
    def post(self, request):
        # 判断用户是否登录
        if not request.user.is_authenticated:
            print('-----用户未登录--------')
            return HttpResponse('{"status": "fail", "msg": "用户未登录"}', content_type="application/json")

        course_id = request.POST.get("course_id", 0)
        comments = request.POST.get("comments", "")
        if int(course_id) > 0 and comments:
            course_comment = CourseComments()
            course = Course.objects.get(id=int(course_id))
            course_comment.course = course
            course_comment.comments = comments
            course_comment.user = request.user
            course_comment.save()

            return HttpResponse('{"status": "success", "msg": "评论发表成功"}', content_type="application/json")
        else:
            return HttpResponse('{"status": "fail", "msg": "评论发表失败"}', content_type="application/json")