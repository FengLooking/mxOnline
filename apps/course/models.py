from datetime import datetime

from django.db import models
from DjangoUeditor.models import UEditorField

from organization.models import CourseOrg
from organization.models import Teacher

# Create your models here.


class Course(models.Model):
    course_org = models.ForeignKey(CourseOrg, verbose_name=u'课程机构', null=True, blank=True, on_delete=models.CASCADE)
    teacher = models.ForeignKey(Teacher, verbose_name=u'讲师', null=True, blank=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=50, verbose_name=u"课程名")
    desc = models.CharField(max_length=300, verbose_name=u"课程描述")
    detail = UEditorField(verbose_name=u"课程详情",width=600, height=300, imagePath="courses/ueditor/", 
                         filePath="courses/ueditor/", default="")
    degree = models.CharField(choices=(("cj",u"初级"),("zj",u"中级"),("gj",u"高级")), max_length=2, verbose_name=u"难度")
    learn_times = models.IntegerField(default=0, verbose_name=u"学习时长(分钟数)")
    students= models.IntegerField(default=0, verbose_name=u"学习人数")
    fav_nums = models.IntegerField(default=0, verbose_name=u"收藏人数")
    image = models.ImageField(upload_to="course/%Y/%m", verbose_name=u"封面图", max_length=100)
    click_nums = models.IntegerField(default=0, verbose_name=u"点击数")
    category = models.CharField(max_length=20, default=u"后端开发", verbose_name=u"课程类别")
    tag = models.CharField(max_length=10, default="", verbose_name=u"课程标签")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")
    youneed_know = models.CharField(max_length=300, default="", verbose_name=u"课程须知")
    what_learn = models.CharField(max_length=300, default="", verbose_name=u"能学到的知识")
    is_banner = models.BooleanField(default=False, verbose_name=u"是否轮播")

    class Meta:
        verbose_name = u"课程"
        verbose_name_plural = verbose_name

    def get_lessons_nums(self):
        # 获取课程章节数
        all_lessons = self.lesson_set.all().count()
        return all_lessons
    # xadmin页面显示
    get_lessons_nums.short_description = u"章节数"

    def go_to(self):
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='http://www.baidu.com'>跳转</a>")
    go_to.short_description = u"跳转"
    
    def get_learn_users(self):
        # 获取课程学习人数
        learn_users = self.usercourse_set.all()[:5]
        return learn_users
    
    def get_course_lesson(self):
        # 获取课程所有章节
        course_lessons = self.lesson_set.all()
        return course_lessons

    def __str__(self):
        return self.name


class BannerCourse(Course):
    """
    一个model注册两个管理器
    """
    class Meta:
        verbose_name = u"轮播课程"
        verbose_name_plural = verbose_name
        # proxy=True
        proxy = True


class Lesson(models.Model):
    course = models.ForeignKey(Course, verbose_name=u"课程", on_delete=models.CASCADE)
    name = models.CharField(max_length=100, verbose_name=u"章节名")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"章节"
        verbose_name_plural = verbose_name

    def get_lesson_videos(self):
        # 获取课程所有章节的视频
        lesson_videos = self.video_set.all()
        return lesson_videos
    
    def __str__(self):
        return self.name


class Video(models.Model):
    lesson = models.ForeignKey(Lesson, verbose_name=u"章节", on_delete=models.CASCADE)
    name = models.CharField(max_length=100, verbose_name=u"视频名称")
    url = models.CharField(max_length=200, default="", verbose_name=u"访问地址")
    learn_times = models.IntegerField(default=0, verbose_name=u"学习时长(分钟数)")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"视频"
        verbose_name_plural = verbose_name
    
    def __str__(self):
        return self.name


class CourseResource(models.Model):
    course = models.ForeignKey(Course, verbose_name=u"课程", on_delete=models.CASCADE)
    name = models.CharField(max_length=100, verbose_name=u"名称")
    download = models.FileField(upload_to="course/resource/%Y/%m", verbose_name=u"资源文件", max_length=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"课程资源"
        verbose_name_plural = verbose_name
    
    def __str__(self):
        return self.name