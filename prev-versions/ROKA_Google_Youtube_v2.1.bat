@echo OFF

set ver=v2.0

title ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%

color f0

:MAIN
cls
echo.
echo                  ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%
echo.
echo                                                ���� �� ����: toonraon@naver.com
echo                                   �ڵ�: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo ������������������������������������
echo ��1. ��ġ�ϱ�                     ��
echo ��2. ��ġ �ǵ�����                ��
echo ��3. ������ ��ġ ȭ������ �̵�  ��
echo ��4. �α׿��� ȭ������ �̵�       ��
echo ��5. Advanced                     ��
echo ������������������������������������
echo.
set /p select=���ڸ� �Է����ּ���. 
echo.

if %select% == 1 goto :PATCH
if %select% == 2 goto :UNPATCH
if %select% == 3 goto :BROWSER
if %select% == 4 goto :LOGOFF
if %select% == 5 goto :ADVANCED
goto :MAIN

:UNPATCH
cls
if exist C:\Windows\System32\drivers\etc\hosts.bak (
 @echo ON
 del C:\Windows\System32\drivers\etc\hosts
 ren C:\Windows\System32\drivers\etc\hosts.bak hosts
 @echo OFF
 echo ���������� �����Ͽ����ϴ�.
 ping 127.0.0.1 -n 2 >nul
 goto :MAIN
)
echo ��� ������ �������� �ʽ��ϴ�.
echo.
goto :MAIN

:PATCH
cls
echo DNS�� �����մϴ�.
netsh interface ip set dns "���� ���� ����" static 8.8.8.8 primary

echo.
echo ����� DNS�� �÷��� �մϴ�.
ipconfig /flushdns

echo.
echo ############################
echo.



echo.
echo hosts ������ ����մϴ�.
cd C:\Windows\System32\drivers\etc
set hosts=hosts
attrib -r -h -s %hosts%

copy %hosts% C:\Windows\System32\drivers\etc\hosts.bak
echo hosts ���� ����� �Ϸ�Ǿ����ϴ�.

echo.
echo hosts ���Ͽ� ����, ��Ʃ�� ip�� �߰��մϴ�.

::���� 2�� �߰�
echo.>> %hosts%
echo.>> %hosts%

@echo ON
echo 216.58.192.35 www.google.co.kr>> %hosts%
echo 216.58.192.35 google.co.kr>> %hosts%
echo 216.58.192.35 accounts.google.co.kr>> %hosts%
echo 216.58.192.35 accounts.google.com>> %hosts%
echo 216.58.192.77 www.google.com>> %hosts%
echo 216.58.192.77 developers.google.com>> %hosts%
echo 216.58.192.77 opensource.google.com>> %hosts%
echo 216.58.192.77 dl.google.com>> %hosts%
echo 216.58.192.77 cache.pack.google.com>> %hosts%
echo 216.58.192.77 code.google.com>> %hosts%
echo 216.58.192.77 tools.google.com>> %hosts%
echo 216.58.192.77 chrome.google.com>> %hosts%
echo 216.58.192.77 update.googleapis.com>> %hosts%
echo 216.58.192.77 trends.google.com>> %hosts%
echo 216.58.192.77 trends.google.co.kr>> %hosts%
echo 216.58.192.77 google.com>> %hosts%
echo 216.58.192.77 support.google.com>> %hosts%
echo 216.58.192.77 goo.gl>> %hosts%
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
echo 216.58.206.14 manifest.googlevideo.com>> %hosts%
echo 216.58.192.77 translate.google.com>> %hosts%

echo 74.125.28.94 ssl.gstatic.com>> %hosts%
echo 216.58.219.131 gstatic.com>> %hosts%
echo 216.58.219.131 www.gstatic.com>> %hosts%

echo 216.58.192.174 www.youtube.com>> %hosts%
echo 216.58.192.174 www.youtube.co.kr>> %hosts%
echo 216.58.192.174 youtube.com>> %hosts%
echo 216.58.192.174 youtu.be>> %hosts%
echo 216.58.192.174 youtube.co.kr>> %hosts%
echo 216.58.192.174 accounts.youtube.com>> %hosts%
echo 216.58.192.174 studio.youtube.com>> %hosts%
echo 216.58.192.174 tv.youtube.com>> %hosts%
echo 216.58.192.174 music.youtube.com>> %hosts%
echo 216.58.192.174 gaming.youtube.com>> %hosts%
echo 216.58.192.174 kids.youtube.com>> %hosts%

echo 216.58.207.46 s.ytimg.com>> %hosts%
echo 216.58.205.238 i.ytimg.com>> %hosts%
echo 216.58.205.238 i9.ytimg.com>> %hosts%
echo 216.58.197.194 yt3.ggpht.com>> %hosts%


echo 216.58.192.77 172.217.26.46>> %hosts%
@echo OFF


echo.
echo ��ġ�� �Ϸ�Ǿ����ϴ�.

echo.
echo ############################
echo.
ping 127.0.0.1 -n 2 >nul


:BROWSER
cls
echo.
echo � ���ͳ� �������� �ٿ�ε� �����ðڽ��ϱ�? (�ٿ�ε尡 �Ϸ�Ǹ� ���� ȭ������ �Ѿ�ϴ�.)
echo.
echo ����������������������������������������
echo ��1. ���̹� ����                      ��
echo ��2. �����                           ��
echo ��3. ���̾�����                       ��
echo ��4. �ٿ�ε� ���� ����               ��
echo ��5. ���α׷� ����                    ��
echo ����������������������������������������
echo.
set /p browser=���ڸ� �Է����ּ���. 
echo.

echo �������� �ٿ�ε� �޴� ���Դϴ�...
echo.
if %browser% == 1 "C:\Program Files\Internet Explorer\iexplore.exe" http://update.whale.naver.net/downloads/installers/WhaleSetup.exe>nul
if %browser% == 2 "C:\Program Files\Internet Explorer\iexplore.exe" https://www.opera.com/computer/thanks?ni=stable&os=windows
if %browser% == 3 "C:\Program Files\Internet Explorer\iexplore.exe" https://software.naver.com/software/summary.nhn?softwareId=MFS_100038
if %browser% == 4 goto :LOGOFF
if %browser% == 5 exit


:LOGOFF
cls
echo.
echo.
echo �α׿����� �Ͻðڽ��ϱ�? (������ 2�ð� �̿� ���� ����)
echo.
echo ����������������������������������������
echo ��1. ���� �ٷ� �α׿���               ��
echo ��2. �α׿��� ���� �ʰ� ó�� ȭ������ ��
echo ��3. ���α׷� ����                    ��
echo ����������������������������������������
echo.
set /p logoff=���ڸ� �Է����ּ���. 
echo.

if %logoff% == 1 goto :YES
if %logoff% == 2 goto :MAIN
if %logoff% == 3 goto :NO
goto :LOGOFF

:YES
shutdown -l

:NO
exit

:ADVANCED
cls
echo.
echo.
echo �ڽ��� ���ϴ� ����Ʈ�� ���� ������ �ڵ� ��ġ�����δ� ������ ���� �� ����ϴ� ����Դϴ�. ���ϴ� ����Ʈ�� ���� IP�� �����Ͽ� ������ ������ �մϴ�. ���� ������ ���� ���� �� �ǵ帱 ��� ������ ����Ʈ ������ ���ѵ� �� �ֽ��ϴ�. �׷� ��쿡�� ������ �ٽ� �����Ͽ� [��ġ �ǵ�����]�� ���ֽʽÿ�.
echo.
echo �ַ� �����̳� ��Ʃ�� ���� �ϳ��� �����ο� ���� ���� IP�� �����ϴ� ��Ը� �۷ι� ����Ʈ�� �����մϴ�.
echo.
echo ����������������������������������������
echo ��1. ���� �迭 ����Ʈ ��ġ �߰��ϱ�   ��
echo ��2. ��Ʃ�� �迭 ����Ʈ ��ġ �߰��ϱ� ��
echo ��3. ���ο� IP �߰��ϱ�(���)         ��
echo ��4. ���ư���                         ��
echo ����������������������������������������
echo.
set /p adv=���ڸ� �Է����ּ���. 
echo.

if %adv% == 1 goto :ADD_GOOGLE
if %adv% == 2 goto :ADD_YOUTUBE
if %adv% == 3 goto :ADD_NEW_URL
if %adv% == 4 goto :MAIN

:ADD_GOOGLE
cls
echo ���� �迭 ����Ʈ�� ��ġ�� �߰��մϴ�.
echo ���Ͻô� ����Ʈ�� ������ �ּҸ� �Է����ּ���.
echo ��^) www.google.co.jp
echo.
set /p domain=������ �ּҸ� �Է��ϼ���. 
@echo ON
echo 216.58.192.77 %domain%>> C:\Windows\System32\drivers\etc\hosts
@echo OFF
ping 127.0.0.1 -n 2 >nul
goto :ADVANCED

:ADD_YOUTUBE
cls
echo ��Ʃ�� �迭 ����Ʈ�� ��ġ�� �߰��մϴ�.
echo ���Ͻô� ����Ʈ�� ������ �ּҸ� �Է����ּ���.
echo ��^) music.youtube.com
echo.
set /p domain=������ �ּҸ� �Է��ϼ���. 
@echo ON
echo 216.58.192.174 %domain%>> C:\Windows\System32\drivers\etc\hosts
@echo OFF
ping 127.0.0.1 -n 2 >nul
goto :ADVANCED

:ADD_NEW_URL
cls
echo ���ο� ����Ʈ�� IP ��ġ�� �߰��մϴ�.
echo ���Ͻô� ����Ʈ�� ��ȸ IP�ּҿ� ������ �ּҸ� �Է����ּ���.
echo ��^) 216.58.192.77 www.google.co.jp
echo.
set /p domain=IP�� �������� �Է����ּ���. : 
@echo ON
echo %domain%>> C:\Windows\System32\drivers\etc\hosts
@echo OFF
ping 127.0.0.1 -n 2 >nul
goto :ADVANCED

pause>nul
