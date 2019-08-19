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
from mxOnline import settings
from django.conf.urls.static import static

from users import views

urlpatterns = [
    path('', TemplateView.as_view(template_name="index.html"), name="index"),
    path('user_center', TemplateView.as_view(template_name="usercenter-info.html"), name="user_center"),
    path('login', views.LoginView.as_view(), name="login"),
    path('logout', views.LogoutView.as_view(), name="logout"),
    path('register', views.RegisterView.as_view(), name="register"),
    re_path('^active/(?P<active_code>.*)/$', views.ActiveUserView.as_view(), name="user_active"),
    path('forgetpwd', views.ForgetPwdView.as_view(), name="forgetpwd"),
    re_path('^reset/(?P<active_code>.*)/$', views.ResetView.as_view(), name="reset_pwd"),
    path('modify_pwd', views.ModifyPwdView.as_view(), name="modify_pwd")
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
