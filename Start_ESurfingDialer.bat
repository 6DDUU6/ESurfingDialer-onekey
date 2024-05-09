@echo off
title ESurfingDialer-Onekey Deamon
setlocal enabledelayedexpansion
set JAVA_HOME=.\jre
set "ver=2024-03-28"
set "config_file=config.txt"

if not exist "%config_file%" (
  set /p "account=请输入你的账号: "
  if "!account!"=="" exit
  set /p "pwd=请输入你的密码: "
  if "!pwd!"=="" exit
) else (
  for /F "tokens=1,2 delims==" %%a in (%config_file%) do (
  if "%%a"=="account" set account=%%b
  if "%%a"=="pwd" set pwd=%%b
  )
)
echo account=%account%>"%config_file%"
echo pwd=%pwd%>>"%config_file%"
echo 账号为%account%，密码为%pwd%，正在启动...



@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe
"%JAVA_EXE%" -jar ESurfingDialer-1.5.0-all.jar -u %account% -p %pwd%

if "%OS%"=="Windows_NT" endlocal


