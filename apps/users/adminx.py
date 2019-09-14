import xadmin
from xadmin import views
from xadmin.plugins.auth import UserAdmin
from xadmin.layout import Fieldset, Main, Side, Row, FormHelper
from django.utils.translation import ugettext as _

from .models import UserProfile
from .models import EmailVerifyRecord
from .models import Banner


# xadmin中已经注册了UserProfile
class UserProfileAdmin(UserAdmin):
    def get_form_layout(self):
        if self.org_obj:
            self.form_layout = (
                Main(
                    Fieldset('',
                             'username', 'password',
                             css_class='unsort no_title'
                             ),
                    Fieldset(_('Personal info'),
                             Row('first_name', 'last_name'),
                             'email'
                             ),
                    Fieldset(_('Permissions'),
                             'groups', 'user_permissions'
                             ),
                    Fieldset(_('Important dates'),
                             'last_login', 'date_joined'
                             ),
                ),
                Side(
                    Fieldset(_('Status'),
                             'is_active', 'is_staff', 'is_superuser',
                             ),
                )
            )
        return super(UserAdmin, self).get_form_layout()


class BaseSetting(object):
    # 主题开启
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    # 左侧导航栏显示设置
    site_title = u"课程后台管理系统"
    site_footer = u"我的课程网"
    menu_style = "accordion"


class EmailVerifyRecordAdmin(object):
    # 后台数据表显示字段
    list_display = ['code', 'email', 'send_type', 'send_time']
    # 搜索功能
    search_fields = ['code', 'email', 'send_type']
    # 过滤器
    list_filter = ['code', 'email', 'send_type', 'send_time']
    # icon
    model_icon = 'fa fa-address-book-o'


class BannerAdmin(object):
    # 后台数据表显示字段
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    # 搜索功能
    search_fields = ['title', 'url', 'index']
    # 过滤器
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


# xadmin.site.register(UserProfile, UserProfileAdmin)
xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)