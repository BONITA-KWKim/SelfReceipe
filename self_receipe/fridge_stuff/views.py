from django.http import HttpResponse


def index(request):
    return HttpResponse("fridge_stuff")
