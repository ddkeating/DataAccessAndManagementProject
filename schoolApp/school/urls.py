from django.urls import path
from .import views

app_name = 'movies'

urlpatterns = [
    path('', views.Home.as_view(), name='home'),
    path('', views.Home.as_view(), name='filter_by_keyword'),
]


