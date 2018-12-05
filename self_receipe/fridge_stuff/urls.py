from django.urls import path

from . import views

app_name = 'fridge_stuff'
urlpatterns = [
    path('', views.index, name='index'),
    path('skill-test/', views.skill_test, name='skill_test'),
]

