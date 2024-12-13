from django.shortcuts import render

# Create your views here.
def xampp(request):
	return render(request, "scratchr-shared/steps/1-xampp.html")