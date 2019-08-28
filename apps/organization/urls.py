from django.urls import path
from django.urls import re_path
from django.views.generic import TemplateView
from mxOnline import settings
from django.conf.urls.static import static

from organization import views


urlpatterns = [
    path('org_list', views.OrgView.as_view(), name="org_list"),
    path('add_ask/', views.AddUserAskView.as_view(), name="add_ask"),
    re_path('^home/(?P<org_id>\d+)/$', views.OrgHomeView.as_view(), name="org_home"),
    re_path('^course/(?P<org_id>\d+)/$', views.OrgCourseView.as_view(), name="org_course"),
    re_path('^desc/(?P<org_id>\d+)/$', views.OrgDescView.as_view(), name="org_desc"),
    re_path('^teacher/(?P<org_id>\d+)/$', views.OrgTeacherView.as_view(), name="org_teacher")
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)