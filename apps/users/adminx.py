import xadmin

from .models import EmailVerifyRecord
from .models import Banner

class EmailVerifyRecordAdmin(object):
    # 后台数据表显示字段
    list_display = ['code', 'email', 'send_type', 'send_time']
    # 搜索功能
    search_fields = ['code', 'email', 'send_type']
    # 过滤器
    list_filter = ['code', 'email', 'send_type', 'send_time']


class BannerAdmin(object):
    # 后台数据表显示字段
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    # 搜索功能
    search_fields = ['title', 'image', 'url', 'index']
    # 过滤器
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)