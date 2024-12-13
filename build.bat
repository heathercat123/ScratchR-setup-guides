@echo off
py manage.py distill-local --force --collectstatic
rem copy templates\index.html build\index.html &rem distill moment