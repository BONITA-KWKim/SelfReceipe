from django.urls import path

from . import views

app_name = 'fridge_stuff'
urlpatterns = [
    path('', views.index, name='index'),
]

