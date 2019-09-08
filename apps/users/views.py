import json

from django.shortcuts import render
from django.contrib.auth import login
from django.contrib.auth import logout
from django.contrib.auth import authenticate
from django.contrib.auth.backends import ModelBackend
from django.contrib.auth.hashers import make_password
from django.db.models import Q
from django.views.generic.base import View
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.urls import reverse

from .models import UserProfile
from .models import EmailVerifyRecord
from .forms import LoginForm
from .forms import RegisterForm
from .forms import ForgetForm
from .forms import ModifyPwdForm
from .forms import UploadImageForm
from .forms import UserInfoForm
from utils import email_send
from utils.mixin_utils import LoginRequiredMixin

# Create your views here.


class CustomBancend(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username)|Q(email=username))
            if user.check_password(password):
                print('password check right')
                return user
        except Exception as e:
            print('error: %s' % e)
            return None


class IndexView(View):
    """
    首页
    """
    def get(self, request):
        return render(request, 'index.html')


class LoginView(View):
    def get(self, request):
        print("get method")
        return render(request, 'login.html')
    def post(self, request):
        print("POST method")
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user_name = request.POST.get('username', '')
            pass_word = request.POST.get('password', '')
            print('username is: %s, passwd is: %s' % (user_name, pass_word))
            user = authenticate(username=user_name, password=pass_word)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return HttpResponseRedirect(reverse('index'))
                else:
                    return render(request, 'login.html', {'msg': u'用户账号未激活!'})
            else:
                return render(request, 'login.html', {'msg': u'用户名或密码错误!'})
        else:
            return render(request, 'login.html', {'login_form':login_form})


class LogoutView(View):
    def get(self, request):
        logout(request)
        return HttpResponseRedirect(reverse('index'))


class ActiveUserView(View):
    def get(self, request, active_code):
        print(active_code)
        all_record = EmailVerifyRecord.objects.filter(code=active_code)
        if all_record:
            for record in all_record:
                email = record.email
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()
        else:
            return render(request, 'active_fail.html')
        return render(request, 'login.html')


class RegisterView(View):
    def get(self, request):
        print('get method for register')
        register_form = RegisterForm()
        return render(request, 'register.html', {'register_form':register_form})
    def post(self, request):
        print('post for register')
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_email = request.POST.get('email', '')
            if UserProfile.objects.filter(email=user_email):
                return render(request, 'register.html', {'msg':u'用户已经存在', 'register_form':register_form})
            pass_word = request.POST.get('password', '')
            user_profile = UserProfile()
            user_profile.username = user_email.split('@')[0]
            user_profile.email = user_email
            user_profile.password = make_password(pass_word)
            user_profile.is_active = False
            user_profile.save()

            email_send.send_register_email(user_email, 'register')
            return HttpResponseRedirect(reverse('login'))
        else:
            return render(request, 'register.html', {'register_form':register_form})


class ForgetPwdView(View):
    def get(self, request):
        forget_form = ForgetForm()
        return render(request, 'forgetpwd.html', {'forget_form':forget_form})
    def post(self, request):
        forget_form = ForgetForm(request.POST)
        if forget_form.is_valid():
            email = request.POST.get('email', '')
            email_send.send_register_email(email, 'forget')
            return render(request, 'send_success.html')
        else:
            return render(request, 'forgetpwd.html', {'forget_form':forget_form})


class ResetView(View):
    def get(self, request, active_code):
        print(active_code)
        all_record = EmailVerifyRecord.objects.filter(code=active_code)
        if all_record:
            for record in all_record:
                email = record.email
                return render(request, 'password_reset.html', {'email':email})
        else:
            return render(request, 'active_fail.html')
        return render(request, 'login.html')


class ModifyPwdView(View):
    """
    修改用户密码
    """
    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get('password1', '')
            pwd2 = request.POST.get('password2', '')
            email = request.POST.get('email', '')
            print('pwd1 is: %s, pwd2 is: %s' % (pwd1, pwd2))
            if pwd1 != pwd2:
                print('密码bu相同')
                return render(request, 'password_reset.html', {'email':email, 'msg':u'密码不一致'})
            user = UserProfile.objects.get(email=email)
            user.password = make_password(pwd2)
            user.save()

            return render(request, 'login.html')
        else:
            email = request.POST.get('email', '')
            return render(request, 'password_reset.html', {'email':email, 'modify_form':modify_form})


class UserCenterView(LoginRequiredMixin, View):
    """
    用户个人信息
    """
    def get(self, request):
        return render(request, 'usercenter-info.html', {})
    def post(self, request):
        print("个人信息修改")
        user_info_form = UserInfoForm(request.POST, instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return HttpResponse('{"status": "success", "msg": "修改成功"}', content_type="application/json")
        else:
            print("个人信息保存失败")
            return HttpResponse(json.dumps(user_info_form.errors), content_type="application/json")


class UploadImageView(LoginRequiredMixin, View):
    """
    用户头像修改
    """
    def post(self, request):
        image_form = UploadImageForm(request.POST, request.FILES, instance=request.user)
        if image_form.is_valid():
            image_form.save()

            return HttpResponse('{"status": "success", "msg": "上传成功"}', content_type="application/json")
        else:
            return HttpResponse('{"status": "fail", "msg": "上传失败"}', content_type="application/json")


class UpdateUserCenterPwdView(LoginRequiredMixin, View):
    """
    在个人中心修改用户密码
    """
    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            print("开始修改密码")
            pwd1 = request.POST.get('password1', '')
            pwd2 = request.POST.get('password2', '')
            if pwd1 != pwd2:
                print('密码bu相同')
                return HttpResponse('{"status": "fail", "msg": "密码不一致"}', content_type="application/json")
            user = request.user
            user.password = make_password(pwd2)
            user.save()

            print("修改密码结束")
            return HttpResponse('{"status": "success", "msg": "密码修改成功"}', content_type="application/json")
        else:
            print("m密码认证失败")
            return HttpResponse(json.dumps(modify_form.errors), content_type="application/json")


class SendEmailCodeView(LoginRequiredMixin, View):
    """
    发送邮箱验证码
    """
    def get(self, request):
        email = request.GET.get("email", "")
        print("获取邮箱: %s" % email)
        print("验证邮箱是否注册过")
        if UserProfile.objects.filter(email=email):
            print("邮箱已经存在")
            return HttpResponse('{"email": "邮箱已经存在"}', content_type="application/json")
        print("发送邮箱验证码")
        email_send.send_register_email(email, 'update_email')

        return HttpResponse('{"status": "success", "msg": "邮箱验证码发送成功"}', content_type="application/json")


class UpdateEmail(LoginRequiredMixin, View):
    """
    更新Email
    """
    def post(self, request):
        print("修改个人邮箱")
        email = request.POST.get("email", "")
        code = request.POST.get("code", "")

        existed_records = EmailVerifyRecord.objects.filter(email=email, code=code, send_type="update_email")
        if existed_records:
            print("修改邮箱")
            user = request.user
            user.email = email
            user.save()
            return HttpResponse('{"status": "success", "msg": "邮箱修改成功"}', content_type="application/json")
        else:
            print("邮箱修改失败")
            return HttpResponse('{"email": "验证码出错"}', content_type="application/json")