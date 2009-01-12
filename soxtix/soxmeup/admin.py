from django.contrib import admin
from soxtix.soxmeup.models import Game, Friend

class GameAdmin(admin.ModelAdmin):
    list_display = ('date', 'team')
admin.site.register(Game, GameAdmin)

class FriendAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'first_choice', 'last_update')
admin.site.register(Friend, FriendAdmin)
