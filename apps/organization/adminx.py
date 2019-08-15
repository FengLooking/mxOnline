import xadmin

from .models import CityDict
from .models import CourseOrg
from .models import Teacher


class CityDictAdmin(object):
    # 后台数据表显示字段
    list_display = ['name', 'desc', 'add_time']
    # 搜索功能
    search_fields = ['name', 'desc']
    # 过滤器
    list_filter = ['name', 'desc', 'add_time']


class CourseOrgAdmin(object):
    # 后台数据表显示字段
    list_display = ['name', 'desc', 'click_nums', 'fav_nums', 'image', 'address', 'city', 'add_time']
    # 搜索功能
    search_fields = ['name', 'desc', 'click_nums', 'fav_nums', 'address', 'city']
    # 过滤器
    list_filter = ['name', 'desc', 'click_nums', 'fav_nums', 'image', 'address', 'city', 'add_time']


class TeacherAdmin(object):
    # 后台数据表显示字段
    list_display = ['org', 'name', 'work_year', 'work_company', 'work_position', 'points', 'click_nums', 'fav_nums', 'add_time']
    # 搜索功能
    search_fields = ['org', 'name', 'work_year', 'work_company', 'work_position', 'points', 'click_nums', 'fav_nums']
    # 过滤器
    list_filter = ['org__name', 'name', 'work_year', 'work_company', 'work_position', 'points', 'click_nums', 'fav_nums', 'add_time']


xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)