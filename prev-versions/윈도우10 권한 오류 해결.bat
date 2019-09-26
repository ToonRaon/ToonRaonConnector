@echo off

echo 반드시 ROKA_Google_Youtube_v2.17.bat 파일과 같은 경로에 있어야합니다.

echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params = %*:"=""
echo UAC.ShellExecute "cmd.exe", "/c ""%~dp0\ROKA_Google_Youtube_v2.17.bat"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"