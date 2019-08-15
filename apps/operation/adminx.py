import xadmin

from .models import UserAsk
from .models import CourseComments
from .models import UserFavorite
from .models import UserMessage
from .models import UserCourse


class UserAskAdmin(object):
    # 后台数据表显示字段
    list_display = ['name', 'mobile', 'course_name', 'add_time']
    # 搜索功能
    search_fields = ['name', 'mobile', 'course_name']
    # 过滤器
    list_filter = ['name', 'mobile', 'course_name', 'add_time']


class CourseCommentsAdmin(object):
    # 后台数据表显示字段
    list_display = ['user', 'course', 'comments', 'add_time']
    # 搜索功能
    search_fields = ['user', 'course', 'comments']
    # 过滤器
    list_filter = ['user__username', 'course__name', 'comments', 'add_time']


class UserFavoriteAdmin(object):
    # 后台数据表显示字段
    list_display = ['user', 'fav_id', 'fav_type', 'add_time']
    # 搜索功能
    search_fields = ['user', 'fav_id', 'fav_type']
    # 过滤器
    list_filter = ['user__username', 'fav_id', 'fav_type', 'add_time']


class UserMessageAdmin(object):
    # 后台数据表显示字段
    list_display = ['user', 'message', 'has_read', 'add_time']
    # 搜索功能
    search_fields = ['user', 'message', 'has_read']
    # 过滤器
    list_filter = ['user', 'message', 'has_read', 'add_time']


class UserCourseAdmin(object):
    # 后台数据表显示字段
    list_display = ['user', 'course', 'add_time']
    # 搜索功能
    search_fields = ['user', 'course']
    # 过滤器
    list_filter = ['user__username', 'course__name', 'add_time']

xadmin.site.register(UserAsk, UserAskAdmin)
xadmin.site.register(CourseComments, CourseCommentsAdmin)
xadmin.site.register(UserFavorite, UserFavoriteAdmin)
xadmin.site.register(UserMessage, UserMessageAdmin)
xadmin.site.register(UserCourse, UserCourseAdmin)