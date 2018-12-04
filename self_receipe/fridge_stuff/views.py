from django.http import HttpResponse
from rest_framework.response import Response

def index(request):
    return HttpResponse("fridge_stuff")


def skill_test(request):
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
