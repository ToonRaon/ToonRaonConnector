@echo OFF

title ToonRaon ������ ����, ��Ʃ�� ���ӱ�

echo DNS�� �����մϴ�.
echo netsh interface ip set dns name= "���� ���� ����" static 8.8.8.8 primary

echo.
echo ����� DNS�� �÷��� �մϴ�.
echo ipconfig /flushdns



echo.
echo hosts ���Ͽ� ����, ��Ʃ�� ip�� �߰��մϴ�.

set hosts=C:\Windows\System32\drivers\etc\hosts
attrib -r -h -s %hosts%



::���� 2�� �߰�
echo.>> %hosts%
echo.>> %hosts%

echo 216.58.192.35 www.google.co.kr>> %hosts%
echo 216.58.192.35 google.co.kr>> %hosts%
echo 216.58.192.35 accounts.google.co.kr>> %hosts%
echo 216.58.192.77 www.google.com>> %hosts%
echo 216.58.192.77 google.com>> %hosts%
echo 216.58.192.77 drive.google.com>> %hosts%
echo 216.58.192.77 drivers.google.com>> %hosts%
echo 216.58.192.77 store.google.com>> %hosts%
echo 216.58.192.77 api.google.com>> %hosts%
echo 216.58.192.77 play.google.com>> %hosts%
echo 216.58.192.77 firebase.google.com>> %hosts%
echo 216.58.192.77 mail.google.com>> %hosts%
echo 216.58.192.77 docs.google.com>> %hosts%
echo 216.58.192.77 analytics.google.com>> %hosts%
echo 185.135.90.235 fonts.google.apis.com>> %hosts%
echo 216.58.192.42 fonts.googleapis.com>> %hosts%
echo 216.58.192.35 fonts.gstatic.com>> %hosts%
echo 216.58.206.14 manifest.googlevideo.com

echo 74.125.28.94 ssl.gstatic.com>> %hosts%
echo 216.58.219.131 gstatic.com>> %hosts%

echo 216.58.192.174 www.youtube.com>> %hosts%
echo 216.58.192.174 www.youtube.co.kr>> %hosts%
echo 216.58.192.174 youtube.com>> %hosts%
echo 216.58.192.174 youtu.be>> %hosts%
echo 216.58.192.174 youtube.co.kr>> %hosts%
echo 216.58.192.174 accounts.youtube.com>> %hosts%

echo 216.58.207.46 s.ytimg.com>> %hosts%
echo 216.58.205.238 i.ytimg.com>> %hosts%
echo 216.58.205.238 i9.ytimg.com>> %hosts%
echo 216.58.197.194 yt3.ggpht.com>> %hosts%


echo.
echo ��ġ�� �Ϸ�Ǿ����ϴ�.



echo.
echo � ���ͳ� �������� �ٿ�ε� �����ðڽ��ϱ�?
echo.
echo 1. ���̹� ����
echo 2. �����
echo 3. ���̾�����
echo 4. �ٿ�ε� ���� ����
echo.
set /p logoff=���ڸ� �Է����ּ���.

if %logoff% == 1 goto :WHALE
if %logoff% == 2 goto :OPERA
if %logoff% == 3 goto :FIREFOX
if %logoff% == 4 goto :LOGOFF

:WHALE
"C:\Program Files\Internet Explorer\iexplore.exe" http://update.whale.naver.net/downloads/installers/WhaleSetup.exe
goto :LOGOFF

:OPERA
"C:\Program Files\Internet Explorer\iexplore.exe" https://www.opera.com/computer/thanks?ni=stable&os=windows
goto :LOGOFF

:WHALE
"C:\Program Files\Internet Explorer\iexplore.exe" https://www.mozilla.org/ko/firefox/download/thanks/
goto :LOGOFF


:LOGOFF
echo.
echo.
echo �α׿����� �Ͻðڽ��ϱ�? (������ 2�ð� �̿� ���� ����)
echo.
echo 1. ���� �ٷ� �α׿���
echo 2. �α׿��� ���� ����
echo.
set /p logoff=���ڸ� �Է����ּ���.

if %logoff% == 1 goto :YES
if %logoff% == 2 goto :NO
goto :LOGOFF

:YES
shutdown -l

:NO
exit

pause>nul
