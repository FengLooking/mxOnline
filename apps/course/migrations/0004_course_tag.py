# Generated by Django 2.2 on 2019-08-31 20:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0003_course_category'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='tag',
            field=models.CharField(default='', max_length=10, verbose_name='课程标签'),
        ),
    ]