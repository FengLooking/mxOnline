# Generated by Django 2.2 on 2019-08-28 21:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0003_auto_20190826_2157'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='image',
            field=models.ImageField(default='image/default.png', upload_to='teacher/%Y/%m', verbose_name='头像'),
        ),
    ]
