from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Category(models.Model):
    name = models.CharField(max_length=250, unique= True) 

class Article(models.Model):
    
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    type = models.CharField(max_length=50)
    name = models.CharField(max_length=50)
    born = models.CharField(max_length=15, null=True, blank=True)
    died = models.CharField(max_length=15, null=True, blank=True)
    nationality = models.CharField(max_length=50, null=True, blank=True)
    known_for = models.CharField(max_length=100, null=True, blank=True)
    notable_work = models.TextField(null=True, blank=True)
    about = models.CharField(max_length=6000)
    year = models.CharField(max_length=15, null=True, blank=True)
    medium = models.CharField(max_length=50, null=True, blank=True)
    dimensions = models.CharField(max_length=50, null=True, blank=True)
    location = models.CharField(max_length=50, null=True, blank=True)
    designed_by = models.CharField(max_length=50, null=True, blank=True)
    developer = models.CharField(max_length=50, null=True, blank=True)

    

class User(models.Model):
    ROLE_CHOICES = [
        ('Student', 'Student'),
        ('Tutor', 'Tutor'),
        ('Admin', 'Admin'),
    ]

    username = models.CharField(max_length=100, null=True, blank=True)
    password = models.CharField(max_length=100, null=True, blank=True)
    role = models.CharField(max_length=10, choices=ROLE_CHOICES)



