from django.db import models

class Game(models.Model):
    date = models.DateField()
    team = models.CharField(max_length=100)
    
    def __unicode__(self):
        return u'%s: %s' % (self.date.strftime('%x'), self.team)
    
    class Meta:
        ordering = ["date"]
    
class Friend(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    choices = models.ManyToManyField("Game", related_name='choices')
    first_choice = models.ForeignKey("Game", related_name='first_choice')
    last_update = models.DateTimeField(auto_now_add=True)
    edit_key = models.CharField(unique=True, max_length=50)
    
    