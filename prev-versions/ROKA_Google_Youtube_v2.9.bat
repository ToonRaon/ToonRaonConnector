@echo OFF

set ver=v2.9

rem ���� ��� ����
set PATH=%cd%

rem ��� SYSTEM32�� ����(�� �׷��� ping ��ɾ �� ����)
cd C:\Windows\System32

title ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%

color 0f



mode con cols=80 lines=35



:MAIN
cls
echo.
echo                  ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%
echo.
echo                                             ���ӱ� �ٿ�ε�: http://toonraon.cf
echo                                                ���� �� ����: toonraon@naver.com
echo                                     �ڵ�: github.com/ToonRaon/ToonRaonConnector
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
echo  ��������������������������������������                                      ��
echo  ����         5. ��ġ ����           ��                                      ��
echo  ��������������������������������������                                      ��
echo  ��                                                                          ��
echo  ������������������������������������������������������������������������������
echo  ����                                0. ���                               ����
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
if %select% == 5 goto :CHANGELOG
if %select% == 0 goto :ADVANCED
if %select% == Q exit
if %select% == q exit

rem �߸� �Է��Ͽ��� ��� ó�� ȭ������ ���ư���
goto :MAIN


:CHANGELOG
cls

rem ��ġ������ �ݵ�� ������ ��

echo ========== %ver% ��ġ ���� ==========
echo.

echo 1. ���� �ٿ�ε� ��ũ ����
echo 2. ��ġ ���� ��ư �߰�
echo 3. ���� Ž���� ��Ŭ�� ���� ��ɵ� �߰�

pause>nul

goto :MAIN



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
echo 216.58.192.77 clientservices.googleapis.com >>hosts
echo 216.58.192.77 ssl.google-anaytics.com >>hosts
echo 216.58.192.77 adservice.google.co.kr >>hosts
echo 216.58.192.77 www.googletagmanager.com >>hosts
echo 216.58.192.77 safebrowsing.googleapis.com >>hosts
echo 216.58.192.77 clients1.google.com >>hosts
echo 216.58.192.77 encrypted-tbn0.gstatic.com >>hosts
echo 216.58.192.77 beacons.gcp.gvt2.com >>hosts
echo 216.58.192.77 clients4.google.co.kr >>hosts
echo 216.58.192.77 mwultong.blogspot.com >>hosts
echo 216.58.192.77 fonts.google.com >>hosts
echo 216.58.192.77 ajax.googleapis.com >>hosts

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
echo 216.58.192.77 lh3.googleusercontent.com >>hosts

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
echo                                     �ڵ�: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ������������������������������������������������������������������������������
echo  ��                              ������ ��ġ                               ��
echo  ������������������������������������������������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����         1. ���̹� ����         ��  ��           2. �����            ����
echo  ��������������������������������������  ��������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����         3. ���̾� ����         ��  ��         4. ���� ũ��           ����
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

echo �������� �ٿ�ε� �޴� �� �Դϴ�...
echo.

if %select% == 1 start https://whale.naver.com/>nul
if %select% == 2 start https://www.opera.com/ko>nul
if %select% == 3 start https://www.mozilla.org/ko/firefox/new/>nul
if %select% == 4 start https://www.google.com/intl/ko_ALL/chrome/>nul
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
echo                                     �ڵ�: github.com/ToonRaon/ToonRaonConnector
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
echo                                     �ڵ�: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ������������������������������������������������������������������������������
echo  ��                                  ���                                    ��
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
echo  ��������������������������������������  ��������������������������������������
echo  ����     7. ���ڻ�/���� ����      ��  ��          8. tracert            ����
echo  ��������������������������������������  ��������������������������������������
echo  ��������������������������������������  ��������������������������������������
echo  ����            9. ping             ��  ��         a. ���� ����           ����
echo  ��������������������������������������  ��������������������������������������
echo  ��������������������������������������                                      ��
echo  ����   b. ���� �̸�, Ȯ���� ����    ��                                      ��
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

if %select% == 1 goto :ADD_GOOGLE
if %select% == 2 goto :ADD_YOUTUBE
if %select% == 3 goto :ADD_NEW_URL
if %select% == 4 goto :OPEN_HOSTS
if %select% == 5 goto :OPEN_BAT
if %select% == 6 goto :LOGOFF
if %select% == 7 goto :COLOR
if %select% == 8 goto :TRACERT
if %select% == 9 goto :PING
if %select% == a goto :GEN_DIR
if %select% == A goto :GEN_DIR
if %select% == b goto :REN
if %select% == B goto :REN
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

:COLOR
cls
echo.
echo                  ToonRaon ������ ����, ��Ʃ�� ���ӱ� %ver%
echo.
echo                                             ���ӱ� �ٿ�ε�: http://toonraon.cf
echo                                                ���� �� ����: toonraon@naver.com
echo                                     �ڵ�: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ������������������������������������������������������������������������������
echo  ��                                ���� ����                                 ��
echo  ������������������������������������������������������������������������������
echo  ��            �Ʒ��� ����ǥ�� �����Ͽ� ���ϴ� ������ �����ϼ���.            ��
echo  ��                 �ʷ� ��� ^& ���� �۾��� �����ϰ� �ʹٸ�                  ��
echo  ��                   20��� �Է��ϸ� �˴ϴ�. (���� X)                   ��
echo  ������������������������������������������������������������������������������
echo  ��                                                                          ��
echo  ��                     0 = ������          8 = ��ȸ��                       ��
echo  ��                     1 = �Ķ���          9 = ���Ķ�                       ��
echo  ��                     2 = �ʷϻ�          a = ���ʷ�                       ��
echo  ��                     3 = �ϴû�          b = ���ϴ�                       ��
echo  ��                     4 = ������          c = ������                       ��
echo  ��                     5 = �����          d = ������                       ��
echo  ��                     6 = �����          e = �����                       ��
echo  ��                     7 = ��ȸ��          f = �Ͼ��                       ��
echo  ��                                                                          ��
echo  ������������������������������������������������������������������������������
echo  ����                              0. ó������                             ����
echo  ������������������������������������������������������������������������������
echo  ��                                                      ���α׷� ���� (Q/q) ��
echo  ������������������������������������������������������������������������������
echo.

set /p select=�Է�: 
echo.

if %select% == 0 goto :MAIN
if %select% == q exit
if %select% == Q exit

@echo ON
color %select%
@echo OFF

goto :COLOR



:TRACERT
cls
echo tracert �� ������ Ȥ�� ip�� �Է��ϼ���. ^(�ڷ� ������ b �Է�^)
echo.
set /p select=�Է�: 

if %select%==b goto :ADVANCED
if %select%==B goto :ADVANCED

@echo ON
tracert -d %select%
@echo OFF

pause
goto :ADVANCED



:PING
cls
echo ping�� ���� ������ Ȥ�� ip�� �Է��ϼ���. ^(�ڷ� ������ b �Է�^)
echo.
set /p select=�Է�: 

if %select%==b goto :ADVANCED
if %select%==B goto :ADVANCED

@echo ON
ping -w 1000 %select%
@echo OFF

pause
goto :ADVANCED



:GEN_DIR
cls
echo ������ ������ ��θ� �Է��ϼ���.
set /p path=���: 

cd %path%

echo.
echo ������ ���� �̸��� �Է��ϼ���.
set /p name=���� �̸�: 

md %name%

cd C:\Windows\System32

goto :ADVANCED




:REN
cls
echo �̸��� �ٲ� ������ �����ϴ� ���� ��θ� �Է��ϼ���.
set /p path=���: 

cd %path%

echo.
echo ========== ���� ��� ==========
echo.
dir

echo.
echo �ٲ� ������ �̸��� Ȯ���ڸ� �Է��ϼ���.
set /p name=�ٲ� ����: 

echo.
echo ���ο� �̸��� Ȯ���ڸ� �Է��ϼ���.
set /p new_name=���ο� �̸��� Ȯ����: 

ren %name% %new_name%

cd C:\Windows\System32

goto :ADVANCED


pause>nul
