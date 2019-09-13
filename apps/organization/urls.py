from django.urls import path
from django.urls import re_path
from django.views.generic import TemplateView

from organization import views


urlpatterns = [
    path('org_list', views.OrgView.as_view(), name="org_list"),
    path('add_ask/', views.AddUserAskView.as_view(), name="add_ask"),
    re_path('^home/(?P<org_id>\d+)/$', views.OrgHomeView.as_view(), name="org_home"),
    re_path('^course/(?P<org_id>\d+)/$', views.OrgCourseView.as_view(), name="org_course"),
    re_path('^desc/(?P<org_id>\d+)/$', views.OrgDescView.as_view(), name="org_desc"),
    re_path('^teacher/(?P<org_id>\d+)/$', views.OrgTeacherView.as_view(), name="org_teacher"),

    # 机构收藏
    path('add_fav/', views.AddFavView.as_view(), name="add_fav"),

    # 授课讲师
    path('teacher_list', views.TeacherListView.as_view(), name="teacher_list"),
    # 讲师详情
    re_path('^teacher_detail/(?P<teacher_id>\d+)/$', views.TeacherDetailView.as_view(), name="teacher_detail")
]