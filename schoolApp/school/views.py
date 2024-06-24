from django.shortcuts import render
from django.http import HttpResponse
from django.views.generic import ListView, DetailView
from .models import Article


# Create your views here.

class Home(ListView):
    template_name = 'school/home.html'
    model = Article
    context_object_name = 'students'

    def get_queryset(self):
        return Article.objects.all()

    
