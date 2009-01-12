from django.db import models
from django import forms
import hashlib

class Game(models.Model):
    date = models.DateField()
    team = models.CharField(max_length=100)
    
    def __unicode__(self):
        return u'%s: %s' % (self.date.strftime('%a %x'), self.team)
    
    class Meta:
        ordering = ["date"]
    
class Friend(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    choices = models.ManyToManyField("Game", related_name='choices')
    first_choice = models.ForeignKey("Game", related_name='first_choice')
    created_on = models.DateTimeField(auto_now_add=True)
    last_update = models.DateTimeField(auto_now=True)
    edit_key = models.CharField(unique=True, max_length=50, blank=True)
    
    def save(self):
        self.edit_key = hashlib.sha1(self.email).hexdigest()
        super(Friend, self).save()

    def __unicode__(self):
            return self.name

    class Meta:
        ordering = ["email"]

class FriendForm(forms.ModelForm):
    choices = forms.ModelMultipleChoiceField(queryset=Game.objects.all(), widget=forms.CheckboxSelectMultiple())
    class Meta:
        model = Friend
        fields = ('name', 'email', 'choices', 'first_choice')
