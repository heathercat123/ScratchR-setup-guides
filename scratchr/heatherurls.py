from django_distill import distill_path

from . import views

urlpatterns = [
	distill_path('xampp/', views.xampp, name='xampp', distill_file='heatherscratchr/xampp/index.html'),
	distill_path('memcached/', views.memcached, name='memcached', distill_file='heatherscratchr/memcached/index.html'),
	distill_path('eaccelerator/', views.eaccelerator, name='eaccelerator', distill_file='heatherscratchr/eaccelerator/index.html'),
	distill_path('downloading/', views.downloading_heather, name='downloading_heather', distill_file='heatherscratchr/downloading/index.html'),
	distill_path('database/', views.database, name='database', distill_file='heatherscratchr/database/index.html'),
	distill_path('settings/', views.settings, name='settings', distill_file='heatherscratchr/settings/index.html'),
]