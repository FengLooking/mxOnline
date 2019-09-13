"""mxOnline URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from django.urls import re_path
from django.views.generic import TemplateView

from users import views

urlpatterns = [
    path('', views.IndexView.as_view(), name="index"),
    path('login', views.LoginView.as_view(), name="login"),
    path('logout', views.LogoutView.as_view(), name="logout"),
    path('register', views.RegisterView.as_view(), name="register"),
    re_path('^active/(?P<active_code>.*)/$', views.ActiveUserView.as_view(), name="user_active"),
    path('forgetpwd', views.ForgetPwdView.as_view(), name="forgetpwd"),
    re_path('^reset/(?P<active_code>.*)/$', views.ResetView.as_view(), name="reset_pwd"),
    path('modify_pwd', views.ModifyPwdView.as_view(), name="modify_pwd"),
    # 个人中心
    path('user_center/', views.UserCenterView.as_view(), name="user_center"),
    # 修改用户头像
    path('image_upload', views.UploadImageView.as_view(), name="upload_image"),
    # 用户中心修改密码
    path('update_pwd/', views.UpdateUserCenterPwdView.as_view(), name="update_pwd"),
    # 发送邮箱验证码
    path('send_email_code/', views.SendEmailCodeView.as_view(), name="send_email_code"),
    # 修改邮箱
    path('update_email/', views.UpdateEmail.as_view(), name="update_email"),
    # 我的课程
    path('mycourse/', views.MyCourseView.as_view(), name="mycourse"),
    # 我收藏的课程机构
    path('myfav_org/', views.MyFavOrgView.as_view(), name="myfav_org"),
    # 我收藏的授课讲师
    path('myfav_teacher/', views.MyFavTeacherView.as_view(), name="myfav_teacher"),
    # 我收藏的公开课
    path('myfav_course/', views.MyFavCourseView.as_view(), name="myfav_course"),
    # 我的消息
    path('mymessage/', views.MyMessageView.as_view(), name="mymessage")
]

# 全局404页面配置
handler404 = "users.views.page_not_found"

handler500 = "users.views.page_error"
