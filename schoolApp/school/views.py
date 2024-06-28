from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Article


# Create your views here.

class Home(ListView):
    template_name = 'school/home.html'
    model = Article
    context_object_name = 'articles'

    def get_queryset(self):
        category_name = self.request.GET.get('category', None) # Stores filter passed via URL.
        search_query = self.request.GET.get('search_query', None) # Stores search query passed via URL.

        # If categoy name is passed, filter by category.
        if category_name and category_name != 'all':
            return Article.objects.filter(category=category_name)
        
        # If search query is passed, filter by search query.
        if search_query:
            if (search_query == ''):
                return Article.objects.all()
            return Article.objects.filter(
                name__icontains=search_query

            )
        return Article.objects.all()


class ArticleDetail(DetailView):
    template_name = 'school/article_detail.html'
    model = Article
    context_object_name = 'articles'

# View to create a new article.
class ArticleCreate(CreateView):
    template_name = 'school/article_create.html'
    model = Article
    fields = ['name', 'category', 'type', 'born', 'died', 'nationality', 'known_for', 'notable_work', 'year', 'medium', 'dimensions', 'location', 'designed_by', 'developer', 'about']
    success_url = '/'

# View to update an article.
class ArticleUpdate(UpdateView):
    template_name = 'school/article_update.html'
    model = Article
    fields = ['name', 'category', 'type', 'born', 'died', 'nationality', 'known_for', 'notable_work', 'year', 'medium', 'dimensions', 'location', 'designed_by', 'developer', 'about']
    success_url = '/'

# View for article deletion confirmation.
class ArticleDelete(DeleteView):
    template_name = 'school/article_delete.html'
    model = Article
    success_url = '/'