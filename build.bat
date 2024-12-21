@echo off
py manage.py distill-local --force --collectstatic

move docs\ScratchR-setup-guides\static .\docs\
rem I wish there were a way to do this directly in distill

copy .nojekyll docs