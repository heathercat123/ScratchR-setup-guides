@echo off


:: Variables

:: - Path to \app\config\sql
set SQLPATH=C:\XAMPP\HTDOCS\SCRATCHR\APP\CONFIG\SQL

:: - Command to run to mysql
set MYSQL=C:\XAMPP\MYSQL\BIN\MYSQL.EXE -u root

:: - DB Name
set DBNAME=scratchr

:: Intro
echo. 
echo --- Heathercat's ScratchR DB Setup ---
echo           2024, Heathercat123
echo.

echo This will create, set up and update a ScratchR DB
echo Press Enter to continue or CTRL-C to exit
pause > nul
echo Alright then!
echo.

:: Create DB
echo Creating DB...
%MYSQL% -e "CREATE DATABASE %DBNAME%;"

:: Initial setup
echo Setting up structure...
%MYSQL% %DBNAME% < %SQLPATH%\db-structure.sql
echo Setting up initial data...
%MYSQL% %DBNAME% < %SQLPATH%\db-data.sql
echo Setting up Stored Procedures...
%MYSQL% %DBNAME% < %SQLPATH%\db-sp.sql
echo.

:: 2009
echo Installing 2009 updates...
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\06-30-2009_altering_pcomments_and_gcomments.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\09-09-2009_whitelisted_ip_addresses.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\09-15-2009_alter_projects_frontpage.sql

:: 2010
echo Installing 2010 updates...
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\05-09-2010_alter_pcomment_gcomment.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\07-28-2010_disposable_domains.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\12-06-2010_remix_notifications.sql

:: 2011
echo Installing 2011 updates...
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\04-11-2011_project_credits.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\05-10-2011_survey.txt
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\13-05-2011_altering_project_censors.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\19-04-2011_altering_roles.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\19-07-2011_elections.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\20-02-2011_prompt_captcha_after_login_fail.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\22-07-2011-announcement-visibility.sql
%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\24-02-2011_redirect_url.sql

:: Heatherscratch
if exists %SQLPATH%\UPDATES\01-12-2024_add_styles.sql (
        echo Installing Heatherscratch updates...
	%MYSQL% %DBNAME% < %SQLPATH%\UPDATES\01-12-2024_add_styles.sql
)
:: Outro
echo.
echo The database should have been set up
echo If you see File Not Found errors, contact Heathercat123
echo If you see Can't Connect to MySQL errors, open  up the XAMPP Control Panel and start MySQL
echo If you see Duplicate Table Name errors, ignore
echo.
echo Have fun!
echo   - Heathercat123
echo.
echo Press any key to exit
pause > nul
exit /b