from django.urls import path
from django.urls import re_path
from django.views.generic import TemplateView
from mxOnline import settings
from django.conf.urls.static import static

from course import views

urlpatterns = [
    path('course_list', views.CourseListView.as_view(), name="course_list")
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)