from django_distill import distill_path

from . import views

urlpatterns = [
	distill_path('xampp/', views.xampp, name='xampp', distill_file='heatherscratchr/xampp/index.html'),
	distill_path('memcached/', views.memcached, name='memcached', distill_file='heathercratchr/memcached/index.html'),
]