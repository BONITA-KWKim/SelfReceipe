import json

from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework.decorators import api_view, parser_classes
from rest_framework.parsers import JSONParser

@api_view(['GET'])
def index(request):
    return HttpResponse("fridge_stuff")


@api_view(['GET'])
@parser_classes((JSONParser,))
def skill_test(request):
    print('skill-test')
    return Response({"version": "2.0",
                     "template": {
                         "outputs": [
                             {
                                 "simpleText": {
                                     "text": "간단한 텍스트 요소입니다."
                                 }
                             }
                         ]
                     }
                     }, content_type='application/json; charset=utf-8')
