from django.shortcuts import render

# Create your views here.
def xampp(request):
	return render(request, "scratchr-shared/steps/1-xampp.html")

def memcached(request):
	return render(request, "scratchr-shared/steps/2-memcached.html")

def eaccelerator(request):
	return render(request, "scratchr-shared/steps/3-eaccelerator.html")

def downloading_scratchr(request):
	return render(request, "scratchr/steps/4-downloading.html")

def downloading_heather(request):
	return render(request, "heatherscratchr/steps/4-downloading.html")

def database(request):
	return render(request, "scratchr-shared/steps/5-database.html")

def settings(request):
	return render(request, "scratchr-shared/steps/6-settings.html")