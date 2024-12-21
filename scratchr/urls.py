from django_distill import distill_path

from . import views

urlpatterns = [
	distill_path('xampp/', views.xampp, name='xampp', distill_file='scratchr/xampp/index.html'),
	distill_path('memcached/', views.memcached, name='memcached', distill_file='scratchr/memcached/index.html'),
	distill_path('eaccelerator/', views.eaccelerator, name='eaccelerator', distill_file='scratchr/eaccelerator/index.html'),
	distill_path('downloading/', views.downloading_scratchr, name='downloading_scratchr', distill_file='scratchr/downloading/index.html'),
	distill_path('database/', views.database, name='database', distill_file='scratchr/database/index.html'),
	distill_path('settings/', views.settings, name='settings', distill_file='scratchr/settings/index.html'),
	distill_path('testit/', views.testit_scratchr, name='testit', distill_file='scratchr/testit/index.html'),
]