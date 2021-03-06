from django.http import HttpResponseRedirect
from django.shortcuts import render_to_response
from soxtix.soxmeup.models import *

def create(request):
    if request.method == 'POST': # If the form has been submitted...
        form = FriendForm(request.POST) # A form bound to the POST data
        if form.is_valid(): # All validation rules pass
            form.save()
            return HttpResponseRedirect('/confirm/') # Redirect after POST
    else:
        form = FriendForm() # An unbound form

    return render_to_response('create.html', {
        'form': form,
    })
    
def confirm(request):
    return render_to_response('confirm.html')
