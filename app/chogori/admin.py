from django.contrib import admin
from django.utils.safestring import mark_safe

from .models import Guide


@admin.register(Guide)
class GuideAdmin(admin.ModelAdmin):
    list_display = ('name', 'age', 'get_image')
    readonly_fields = ('get_image',)

    def get_image(self, obj):
        return mark_safe(f'<img src={obj.image.url} width="100" height="100">')

    get_image.short_description = 'Photo'


admin.site.site_title = 'My webapp'
admin.site.site_header = 'My webapp'
