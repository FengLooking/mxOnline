from django.urls import path
from django.urls import re_path
from django.views.generic import TemplateView
from mxOnline import settings
from django.conf.urls.static import static

from organization import views


urlpatterns = [
    path('org_list', views.OrgView.as_view(), name="org_list"),
    path('add_ask/', views.AddUserAskView.as_view(), name="add_ask")
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)