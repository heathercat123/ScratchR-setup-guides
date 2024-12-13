from django_distill import distill_path

from . import views

urlpatterns = [
	distill_path('xampp/', views.xampp, name='xampp', distill_file='heatherscratchr/xampp/index.html'),
]