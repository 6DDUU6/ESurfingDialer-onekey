@echo off
chcp 65001
title ESurfingDialer-One-Click-Windows-1.8.1
setlocal enabledelayedexpansion
set "ver=2025-2-20"
set "config_file=config.txt"
set "JAVA_HOME=.\jre"

if not exist "%config_file%" (
  :input_account
  set /p "account=请输入校园网账号: "
  if "!account!"=="" (
    echo 账号不能为空，请重新输入。
    goto input_account
  )
  
  :input_pwd
  set /p "pwd=请输入校园网密码: "
  if "!pwd!"=="" (
    echo 密码不能为空，请重新输入。
    goto input_pwd
  )
) else (
  for /F "tokens=1,2 delims==" %%a in (%config_file%) do (
    if "%%a"=="account" set "account=%%b"
    if "%%a"=="pwd" set "pwd=%%b"
  )
)

(
  echo account=%account%
  echo pwd=%pwd%
) > "%config_file%"

echo 账号为%account% 密码为%pwd%

set "DIRNAME=%~dp0"
if "%DIRNAME%"=="" set "DIRNAME=."
set "APP_HOME=%DIRNAME%.."

for %%i in ("%APP_HOME%") do set "APP_HOME=%%~fi"

set "JAVA_EXE=%JAVA_HOME%/bin/java.exe"
"%JAVA_EXE%" -jar client.jar -u %account% -p %pwd%

endlocal
