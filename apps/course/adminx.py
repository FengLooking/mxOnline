import xadmin

from .models import Course
from .models import Lesson
from .models import Video
from .models import CourseResource
from .models import BannerCourse
from organization.models import CourseOrg


class LessonInline(object):
    model = Lesson
    extra = 0


class CourseResourceInline(object):
    model = CourseResource
    extra = 0


class CourseAdmin(object):
    # 后台数据表显示字段
    list_display = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time', 'get_lessons_nums', 'go_to']
    # 搜索功能
    search_fields = ['name', 'desc', 'detail', 'degree', 'students', 'fav_nums', 'click_nums']
    # 过滤器
    list_filter = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time']
    # 默认排序
    ordering = ["-click_nums"]
    # 只读字段 和exclude不能设置同一个字段
    readonly_fields = ["click_nums"]
    # 列表页直接可修改字段
    list_editable = ["degree", "desc"]
    # 设置不显示字段
    exclude = ["fav_nums"]

    # 课程里面嵌套章节和课程资源
    inlines = [LessonInline, CourseResourceInline]

    # 集成富文本
    style_fields = {'detail': 'ueditor'}

    # 刷新设置
    # refresh_times = [3, 5]

    # 一个model注册两个管理器
    def queryset(self):
        qs = super(CourseAdmin, self).queryset()
        qs_new = qs.filter(is_banner=False)
        return qs_new
    
    def save_models(self):
        # 保存课程的时候统计课程机构的课程数
        obj = self.new_obj
        obj.save()
        if obj.course_org is not None:
            course_org = obj.course_org
            course_org.courses_nums = Course.objects.filter(course_org=course_org).count()
            course_org.save()


class BannerCourseAdmin(object):
    """
    一个model注册两个管理器
    """
    # 后台数据表显示字段
    list_display = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time']
    # 搜索功能
    search_fields = ['name', 'desc', 'detail', 'degree', 'students', 'fav_nums', 'click_nums']
    # 过滤器
    list_filter = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time']
    # 默认排序
    ordering = ["-click_nums"]
    # 只读字段 和exclude不能设置同一个字段
    readonly_fields = ["click_nums"]
    # 设置不显示字段
    exclude = ["fav_nums"]

    # 课程里面嵌套章节和课程资源
    inlines = [LessonInline, CourseResourceInline]

    def queryset(self):
        qs = super(BannerCourseAdmin, self).queryset()
        qs_new = qs.filter(is_banner=True)
        return qs_new


class LessonAdmin(object):
    # 后台数据表显示字段
    list_display = ['course', 'name', 'add_time']
    # 搜索功能
    search_fields = ['course', 'name']
    # 过滤器
    list_filter = ['course__name', 'name', 'add_time']


class VideoAdmin(object):
    # 后台数据表显示字段
    list_display = ['lesson', 'name', 'add_time']
    # 搜索功能
    search_fields = ['lesson', 'name']
    # 过滤器
    list_filter = ['lesson__name', 'name', 'add_time']


class CourseResourceAdmin(object):
    # 后台数据表显示字段
    list_display = ['course', 'name', 'download', 'add_time']
    # 搜索功能
    search_fields = ['course', 'name', 'download']
    # 过滤器
    list_filter = ['course__name', 'name', 'download', 'add_time']

xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(BannerCourse, BannerCourseAdmin)
xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)