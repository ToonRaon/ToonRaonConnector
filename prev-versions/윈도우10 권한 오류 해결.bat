@echo off

echo �ݵ�� ROKA_Google_Youtube_v2.17.bat ���ϰ� ���� ��ο� �־���մϴ�.

echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params = %*:"=""
echo UAC.ShellExecute "cmd.exe", "/c ""%~dp0\ROKA_Google_Youtube_v2.17.bat"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"