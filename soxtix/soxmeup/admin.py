from django.contrib import admin
from soxtix.soxmeup.models import Game, Friend

class GameAdmin(admin.ModelAdmin):
    list_display = ('date', 'team')

admin.site.register(Game, GameAdmin)
admin.site.register(Friend)
