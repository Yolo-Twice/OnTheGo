@echo off
setlocal

:: Prompt for MySQL username
set /p MYSQL_USER="Enter MySQL username: "

:: Prompt for MySQL password
set /p MYSQL_PASSWORD="Enter MySQL password: "

:: Define your SQL files
set SQL_FILE1=".\TableCreation.sql"
set SQL_FILE2=".\dataInsertion.sql"
set SQL_FILE3=".\Triggers.sql"

:: Execute the SQL files
mysql -u %MYSQL_USER% -p%MYSQL_PASSWORD% -e "source %SQL_FILE1%"
mysql -u %MYSQL_USER% -p%MYSQL_PASSWORD% -e "source %SQL_FILE3%"
mysql -u %MYSQL_USER% -p%MYSQL_PASSWORD% -e "source %SQL_FILE2%"

echo SQL files executed successfully.

endlocal
pause
