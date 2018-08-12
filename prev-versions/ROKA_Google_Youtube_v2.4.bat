@echo OFF

set ver=v2.4

title ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%

rem �Ķ� ��� �� �۾�
color 9f

rem ���� ��� ����
set PATH=%cd%

rem ��� SYSTEM32�� ����(�� �׷��� ping ��ɾ �� ����)
cd C:\Windows\System32

mode con cols=80 lines=35



:MAIN
cls
echo.
echo                  ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%
echo.
echo                                             ���ӱ� �ٿ�ε�: http://toonraon.cf
echo                                                ���� �� ����: toonraon@naver.com
echo                                   �ڵ�: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ������������������������������������������������������������������������������
echo  ��                                ó�� ȭ��                                 ��
echo  ������������������������������������������������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����          1. ��ġ�ϱ�           ��  ��        2. ��ġ �ǵ�����        ����
echo  ��������������������������������������  ��������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����       3. ������ ��ġ         ��  ��       4. ���ӱ� Ȩ������       ����
echo  ��������������������������������������  ��������������������������������������
echo  ��                                                                          ��
echo  ������������������������������������������������������������������������������
echo  ����                              0. Advanced                             ����
echo  ������������������������������������������������������������������������������
echo  ��                                                      ���α׷� ���� (Q/q) ��
echo  ������������������������������������������������������������������������������
echo.
set /p select=�Է�: 
echo.

if %select% == 1 goto :PATCH
if %select% == 2 goto :UNPATCH
if %select% == 3 goto :BROWSER
if %select% == 4 goto :HOMEPAGE
if %select% == 0 goto :ADVANCED
if %select% == Q exit
if %select% == q exit

rem �߸� �Է��Ͽ��� ��� ó�� ȭ������ ���ư���
goto :MAIN



:HOMEPAGE
if exist "C:\Program Files\Naver\Naver Whale\Application\whale.exe" (
	"C:\Program Files\Naver\Naver Whale\Application\whale.exe" http://toonraon.cf>nul
	goto :MAIN
)
if exist "C:\Program Files\Opera\launcher.exe" (
	"C:\Program Files\Opera\launcher.exe" http://toonraon.cf>nul
	goto :MAIN
)
if exist "C:\Program Files\Mozilla Firefox\firefox.exe" (
	"C:\Program Files\Mozilla Firefox\firefox.exe" http://toonraon.cf>nul
	goto :MAIN
)
if exist "C:\Program Files\Internet Explorer\iexplore.exe" (
	"C:\Program Files\Internet Explorer\iexplore.exe" http://toonraon.cf>nul
	goto :MAIN
)



:UNPATCH
cls
if exist C:\Windows\System32\drivers\etc\hosts.bak (
 rem ��� ������ ������ ��
 
 @echo ON
 del C:\Windows\System32\drivers\etc\hosts
 ren C:\Windows\System32\drivers\etc\hosts.bak hosts

 @echo OFF
 echo ���������� �����Ͽ����ϴ�.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
) else (
 rem ��� ���� �������� ���� ��
 
 echo ��� ������ �������� �ʽ��ϴ�.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
)

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
attrib -r -h -s hosts

copy hosts C:\Windows\System32\drivers\etc\hosts.bak
echo hosts ���� ����� �Ϸ�Ǿ����ϴ�.

echo.
echo hosts ���Ͽ� ����, ��Ʃ�� ip�� �߰��մϴ�.

rem ���� 2�� �߰�
echo. >>hosts
echo. >>hosts

@echo ON
rem ���� �迭
echo 216.58.192.35 www.google.co.kr >>hosts
echo 216.58.192.35 google.co.kr >>hosts
echo 216.58.192.35 accounts.google.co.kr >>hosts
echo 216.58.192.35 accounts.google.com >>hosts
echo 216.58.192.77 www.google.com >>hosts
echo 216.58.192.77 developers.google.com >>hosts
echo 216.58.192.77 opensource.google.com >>hosts
echo 216.58.192.77 dl.google.com >>hosts
echo 216.58.192.77 cache.pack.google.com >>hosts
echo 216.58.192.77 code.google.com >>hosts
echo 216.58.192.77 tools.google.com >>hosts
echo 216.58.192.77 chrome.google.com >>hosts
echo 216.58.192.77 update.googleapis.com >>hosts
echo 216.58.192.77 trends.google.com >>hosts
echo 216.58.192.77 trends.google.co.kr >>hosts
echo 216.58.192.77 google.com >>hosts
echo 216.58.192.77 support.google.com >>hosts
echo 216.58.192.77 goo.gl >>hosts
echo 216.58.192.77 drive.google.com >>hosts
echo 216.58.192.77 drivers.google.com >>hosts
echo 216.58.192.77 store.google.com >>hosts
echo 216.58.192.77 api.google.com >>hosts
echo 216.58.192.77 play.google.com >>hosts
echo 216.58.192.77 firebase.google.com >>hosts
echo 216.58.192.77 mail.google.com >>hosts
echo 216.58.192.77 docs.google.com >>hosts
echo 216.58.192.77 analytics.google.com >>hosts
echo 185.135.90.235 fonts.google.apis.com >>hosts
echo 216.58.192.42 fonts.googleapis.com >>hosts
echo 216.58.192.35 fonts.gstatic.com >>hosts
echo 216.58.206.14 manifest.googlevideo.com >>hosts
echo 216.58.192.77 translate.google.com >>hosts
echo 216.58.192.77 maps.google.com >>hosts
echo 216.58.192.77 maps.google.co.kr >>hosts
echo 216.58.192.77 www.maps.google.com >>hosts
echo 216.58.192.77 www.maps.google.co.kr >>hosts
echo 216.58.192.77 www.blogger.com >>hosts
echo 216.58.192.77 blogger.com >>hosts
echo 216.58.192.77 www.blogspot.com >>hosts
echo 216.58.192.77 blogspot.com >>hosts

rem ���� �迭2
echo 74.125.28.94 ssl.gstatic.com >>hosts
echo 216.58.219.131 gstatic.com >>hosts
echo 216.58.219.131 www.gstatic.com >>hosts

rem ��Ʃ�� �迭
echo 216.58.192.174 www.youtube.com >>hosts
echo 216.58.192.174 www.youtube.co.kr >>hosts
echo 216.58.192.174 youtube.com >>hosts
echo 216.58.192.174 youtu.be >>hosts
echo 216.58.192.174 youtube.co.kr >>hosts
echo 216.58.192.174 accounts.youtube.com >>hosts
echo 216.58.192.174 studio.youtube.com >>hosts
echo 216.58.192.174 tv.youtube.com >>hosts
echo 216.58.192.174 music.youtube.com >>hosts
echo 216.58.192.174 gaming.youtube.com >>hosts
echo 216.58.192.174 kids.youtube.com >>hosts

rem ��Ʃ�� �迭2
echo 216.58.207.46 s.ytimg.com >>hosts
echo 216.58.205.238 i.ytimg.com >>hosts
echo 216.58.205.238 i9.ytimg.com >>hosts
echo 216.58.197.194 yt3.ggpht.com >>hosts

rem ���� ũ�� ������Ʈ ����
echo 216.58.192.77 172.217.26.46 >>hosts

@echo OFF

cd C:\Windows\System32

echo.
echo ��ġ�� �Ϸ�Ǿ����ϴ�.

ping 127.0.0.1 -n 2 >nul


:BROWSER
cls
echo.
echo                  ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%
echo.
echo                                                ���� �� ����: toonraon@naver.com
echo                                   �ڵ�: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ������������������������������������������������������������������������������
echo  ��                              ������ ��ġ                               ��
echo  ������������������������������������������������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����         1. ���̹� ����         ��  ��           2. �����            ����
echo  ��������������������������������������  ��������������������������������������
echo  ��������������������������������������                                      ��
echo  ����         3. ���̾� ����         ��                                      ��
echo  ��������������������������������������                                      ��
echo  ��                                                                          ��
echo  ������������������������������������������������������������������������������
echo  ����                           0. ó�� ȭ������                           ����
echo  ������������������������������������������������������������������������������
echo  ��                                                      ���α׷� ���� (Q/q) ��
echo  ������������������������������������������������������������������������������
echo.
set /p select=�Է�: 
echo.

echo �������� �ٿ�ε� �޴� �� �Դϴ�...
echo.

if %select% == 1 "C:\Program Files\Internet Explorer\iexplore.exe" http://update.whale.naver.net/downloads/installers/WhaleSetup.exe>nul
if %select% == 2 "C:\Program Files\Internet Explorer\iexplore.exe" https://www.opera.com/computer/thanks?ni=stable&os=windows
if %select% == 3 "C:\Program Files\Internet Explorer\iexplore.exe" https://software.naver.com/software/summary.nhn?softwareId=MFS_100038
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem �߸� �Է��Ͽ��� ��� BROWSER���� ���ư���
goto :BROWSER



:LOGOFF
cls
echo.
echo                  ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%
echo.
echo                                                ���� �� ����: toonraon@naver.com
echo                                   �ڵ�: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ������������������������������������������������������������������������������
echo  ��                                �α׿���                                  ��
echo  ������������������������������������������������������������������������������
echo  ��                 �α׿����� �� ��� ������ �̿� 2�ð� ����                ��
echo  ��                  �ڵ����� ������ ������ ���� �� �ֽ��ϴ�.                ��
echo  ��                                                                          ��
echo  ��������������������������������������  ��������������������������������������
echo  ����          1. �α׿���           ��  ��       2. �α׿��� �� ��        ����
echo  ��������������������������������������  ��������������������������������������
echo  ��                                                                          ��
echo  ������������������������������������������������������������������������������
echo  ����                           0. ó�� ȭ������                           ����
echo  ������������������������������������������������������������������������������
echo  ��                                                      ���α׷� ���� (Q/q) ��
echo  ������������������������������������������������������������������������������
echo.
set /p select=�Է�: 
echo.

if %select% == 1 shutdown -l
if %select% == 2 goto :MAIN
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem �߸� �Է��Ͽ��� ��� LOGOFF�� ���ư���
goto :LOGOFF



:ADVANCED
cls
echo.
echo                  ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%
echo.
echo                                                ���� �� ����: toonraon@naver.com
echo                                   �ڵ�: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ������������������������������������������������������������������������������
echo  ��                                AVDANCED                                  ��
echo  ������������������������������������������������������������������������������
echo  ��         ����! ���� ������ ���� �е鿡�� ����� ������ �ʽ��ϴ�.          ��
echo  ��                                                                          ��
echo  ��������������������������������������  ��������������������������������������
echo  ����  1. ���� ����Ʈ ��ġ �߰��ϱ�  ��  �� 2. ��Ʃ�� ����Ʈ ��ġ �߰��ϱ� ����
echo  ��������������������������������������  ��������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����  3. ���ο� IP�� URL ����ϱ�   ��  �� 4. hosts ���� �޸������� ����  ����
echo  ��������������������������������������  ��������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����   5. �� ������ �ؽ�Ʈ�� ����   ��  ��      6. ��ǻ�� �α׿���        ����
echo  ��������������������������������������  ��������������������������������������
echo  ��                                                                          ��
echo  ������������������������������������������������������������������������������
echo  ����                           0. ó�� ȭ������                           ����
echo  ������������������������������������������������������������������������������
echo  ��                                                      ���α׷� ���� (Q/q) ��
echo  ������������������������������������������������������������������������������
echo.
set /p select=�Է�: 
echo.

if %select% == 1 goto :ADD_GOOGLE
if %select% == 2 goto :ADD_YOUTUBE
if %select% == 3 goto :ADD_NEW_URL
if %select% == 4 goto :OPEN_HOSTS
if %select% == 5 goto :OPEN_BAT
if %select% == 6 goto :LOGOFF
if %select% == 7 goto :CMD
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem �߸� �Է��Ͽ��� ��� ADVANCED�� ���ư���
goto :ADVANCED



:ADD_GOOGLE
cls
echo �� ����� �����ڰ� ��ó �߰��ϱ� ���� ���� ���� ����Ʈ^(���� ��� google.co.jp^)�� ���� �� ���� �ش� ����Ʈ�� ��ġ�� �� �ֽ��ϴ�.
echo.
echo ���� �迭 ����Ʈ�� ��ġ�� �߰��մϴ�.
echo ���Ͻô� ����Ʈ�� ������ �ּҸ� �Է����ּ���.
echo ��^) www.google.co.jp
echo.
echo ���ư���(B/b)
echo.
set /p domain=������ �ּҸ� �Է��ϼ���. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.77 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_YOUTUBE
cls
echo �� ����� �����ڰ� ��ó �߰��ϱ� ���� ��Ʃ�� ���� ����Ʈ^(���� ��� music.youtube.com^)�� ���� �� ���� �ش� ����Ʈ�� ��ġ�� �� �ֽ��ϴ�.
echo.
echo ��Ʃ�� �迭 ����Ʈ�� ��ġ�� �߰��մϴ�.
echo ���Ͻô� ����Ʈ�� ������ �ּҸ� �Է����ּ���.
echo ��^) music.youtube.com
echo.
echo ���ư���(B/b)
echo.
set /p domain=������ �ּҸ� �Է��ϼ���. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.174 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_NEW_URL
cls
echo �� ����� �����ڰ� ��ó �߰��ϱ� ���� ����Ʈ�� ���� �� ���� �ش� ����Ʈ�� ��ġ�� �� �ֽ��ϴ�.
echo.
echo ��� ����Ʈ�� ������ ���� �ƴϸ�, �����̳� ��Ʃ��ó�� �ϳ��� �����ο� �������� ���� IP�� �����ϴ� ���� �۷ι� ����Ʈ�� ��쿡�� �����մϴ�.
echo 172.xxx.xxx.xxx�� �����ϴ� IP�� �����濡�� ���� �Ұ����մϴ�.
echo.
echo ���ο� ����Ʈ�� IP ��ġ�� �߰��մϴ�.
echo ���Ͻô� ����Ʈ�� ��ȸ IP�ּҿ� ������ �ּҸ� �Է����ּ���.
echo ��^) 216.58.192.77 www.google.co.jp
echo.
echo ���ư���(B/b)
echo.
set /p domain=IP�� �������� �Է����ּ���. : 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:OPEN_HOSTS
"C:\Windows\System32\notepad.exe" "C:\Windows\System32\drivers\etc\hosts">nul
goto :ADVANCED

:OPEN_BAT
"C:\Windows\System32\notepad.exe" %0 >nul

goto :ADVANCED


pause>nul
