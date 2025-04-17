"""Radhee URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [ 
    #path('admin/', admin.site.urls),
    path('', views.homepage),
    path('quiz/', views.quizonline, name="quiz"),
    path('quizcpr/', views.quizcpr, name="quizcpr"),
    path('userinfo/', views.userinfo, name="userinfo"),    
    path('userinfofs/', views.userinfofs, name="userinfofs"),
    path('userinfofa/', views.userinfofa, name="userinfofa"),
    path('userinfocpr/', views.userinfocpr, name="userinfocpr"),
    path('quiz-hindi/', views.quizhindi, name="quizhindi"),
    path('quiz-marathi/', views.quizgsmarathi, name="quizgsmarathi"),
    path('quizfs/', views.quizfs, name="quizfs"),
    path('quizfa/', views.quizfa, name="quizfa")
]
