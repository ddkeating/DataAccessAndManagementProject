from django.urls import path
from .import views

app_name = 'articles'

urlpatterns = [
    path('', views.Home.as_view(), name='home'),
    path('', views.Home.as_view(), name='filter_by_keyword'),
    path('', views.Home.as_view(), name='filter_by_category'),
    path('article/<int:pk>/', views.ArticleDetail.as_view(), name='article_detail'),
    path('article/create', views.ArticleCreate.as_view(), name='article_create'),
    path('article/update/<int:pk>/', views.ArticleUpdate.as_view(), name='article_update'),
    path('article/delete/<int:pk>/', views.ArticleDelete.as_view(), name='article_delete'),
]


