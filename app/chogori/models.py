from django.db import models
from django.contrib.auth.models import User

import os


try:
    user = User.objects.create_user(
        username=os.environ.get('DJANGO_LOGIN'),
        password=os.environ.get('DJANGO_LOGIN'),
        is_staff=True, is_superuser=True
    )
    user.save()
except Exception:
    pass


class Guide(models.Model):
    """Guides"""
    name = models.CharField('Name', max_length=100)
    age = models.PositiveSmallIntegerField('Age', default=0)
    description = models.TextField('Information')
    image = models.ImageField('Photo', upload_to='guides/')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Guide'
        verbose_name_plural = 'Guides'
