# Create your views here.
from django.http import HttpResponse

def create(request):
    return HttpResponse("hello")
    
def confirm(request):
    return HttpResponse("goodbye")