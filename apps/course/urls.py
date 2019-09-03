from django.urls import path
from django.urls import re_path
from django.views.generic import TemplateView
from mxOnline import settings
from django.conf.urls.static import static

from course import views

urlpatterns = [
    path('course_list', views.CourseListView.as_view(), name="course_list"),
    re_path('course_detail/(?P<course_id>\d+)/$', views.CourseDetailView.as_view(), name="course_detail"),
    re_path('course_video/(?P<course_id>\d+)/$', views.CourseVideoView.as_view(), name="course_video"),
    re_path('course_comment/(?P<course_id>\d+)/$', views.CommentsView.as_view(), name="course_comment"),
    # 发表评论
    path('add_comments', views.AddCommentsView.as_view(), name="add_comments"),
    # 播放课程视频
    re_path('video_play/(?P<video_id>\d+)/$', views.VideoPlayView.as_view(), name="video_play")
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)