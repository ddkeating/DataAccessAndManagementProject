from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Article(models.Model):
    article_id = models.AutoField(primary_key=True, unique=True)
    category = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    type = models.CharField(max_length=255)
    born = models.IntegerField(null=True)
    died = models.IntegerField(null=True)
    nationality = models.CharField(max_length=255, null=True)
    known_for = models.CharField(max_length=255, null=True)
    notable_work = models.CharField(max_length=255, null=True)
    about = models.TextField(max_length=65000)
    year = models.CharField(max_length=10, null=True)
    medium = models.CharField(max_length=255, null=True)
    dimensions = models.CharField(max_length=255, null=True)
    desndev = models.CharField(max_length=255, null=True)
    

class User(models.Model):
    ROLE_CHOICES = [
        ('Student', 'Student'),
        ('Tutor', 'Tutor'),
        ('Admin', 'Admin'),
    ]

    username = models.CharField(max_length=100, null=True, blank=True)
    password = models.CharField(max_length=100, null=True, blank=True)
    role = models.CharField(max_length=10, choices=ROLE_CHOICES)



