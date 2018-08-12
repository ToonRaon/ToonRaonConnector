@echo OFF

set ver=v2.0

title ToonRaon 싸지방 구글, 유튜브 접속기 %ver%

color f0

:MAIN
cls
echo.
echo                  ToonRaon 싸지방 구글, 유튜브 접속기 %ver%
echo.
echo                                                문의 및 건의: toonraon@naver.com
echo                                   코드: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo ┏━━━━━━━━━━━━━━━━┓
echo ┃1. 패치하기                     ┃
echo ┃2. 패치 되돌리기                ┃
echo ┃3. 브라우저 설치 화면으로 이동  ┃
echo ┃4. 로그오프 화면으로 이동       ┃
echo ┃5. Advanced                     ┃
echo ┗━━━━━━━━━━━━━━━━┛
echo.
set /p select=숫자를 입력해주세요. 
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
 echo 성공적으로 복원하였습니다.
 ping 127.0.0.1 -n 2 >nul
 goto :MAIN
)
echo 백업 파일이 존재하지 않습니다.
echo.
goto :MAIN

:PATCH
cls
echo DNS를 변경합니다.
netsh interface ip set dns "로컬 영역 연결" static 8.8.8.8 primary

echo.
echo 변경된 DNS를 플러싱 합니다.
ipconfig /flushdns

echo.
echo ############################
echo.



echo.
echo hosts 파일을 백업합니다.
cd C:\Windows\System32\drivers\etc
set hosts=hosts
attrib -r -h -s %hosts%

copy %hosts% C:\Windows\System32\drivers\etc\hosts.bak
echo hosts 파일 백업이 완료되었습니다.

echo.
echo hosts 파일에 구글, 유튜브 ip를 추가합니다.

::공백 2줄 추가
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
echo 패치가 완료되었습니다.

echo.
echo ############################
echo.
ping 127.0.0.1 -n 2 >nul


:BROWSER
cls
echo.
echo 어떤 인터넷 브라우저를 다운로드 받으시겠습니까? (다운로드가 완료되면 다음 화면으로 넘어갑니다.)
echo.
echo ┏━━━━━━━━━━━━━━━━━━┓
echo ┃1. 네이버 웨일                      ┃
echo ┃2. 오페라                           ┃
echo ┃3. 파이어폭스                       ┃
echo ┃4. 다운로드 하지 않음               ┃
echo ┃5. 프로그램 종료                    ┃
echo ┗━━━━━━━━━━━━━━━━━━┛
echo.
set /p browser=숫자를 입력해주세요. 
echo.

echo 브라우저를 다운로드 받는 중입니다...
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
echo 로그오프를 하시겠습니까? (싸지방 2시간 이용 제한 해제)
echo.
echo ┏━━━━━━━━━━━━━━━━━━┓
echo ┃1. 지금 바로 로그오프               ┃
echo ┃2. 로그오프 하지 않고 처음 화면으로 ┃
echo ┃3. 프로그램 종료                    ┃
echo ┗━━━━━━━━━━━━━━━━━━┛
echo.
set /p logoff=숫자를 입력해주세요. 
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
echo 자신이 원하는 사이트에 들어가고 싶은데 자동 패치만으로는 들어가지지 않을 때 사용하는 기능입니다. 원하는 사이트의 접속 IP를 변경하여 접속을 가능케 합니다. 관련 지식이 없는 분이 막 건드릴 경우 오히려 사이트 접속이 제한될 수 있습니다. 그런 경우에는 파일을 다시 실행하여 [패치 되돌리기]를 해주십시오.
echo.
echo 주로 구글이나 유튜브 같이 하나의 도메인에 여러 개의 IP를 제공하는 대규모 글로벌 사이트만 가능합니다.
echo.
echo ┏━━━━━━━━━━━━━━━━━━┓
echo ┃1. 구글 계열 사이트 패치 추가하기   ┃
echo ┃2. 유튜브 계열 사이트 패치 추가하기 ┃
echo ┃3. 새로운 IP 추가하기(고급)         ┃
echo ┃4. 돌아가기                         ┃
echo ┗━━━━━━━━━━━━━━━━━━┛
echo.
set /p adv=숫자를 입력해주세요. 
echo.

if %adv% == 1 goto :ADD_GOOGLE
if %adv% == 2 goto :ADD_YOUTUBE
if %adv% == 3 goto :ADD_NEW_URL
if %adv% == 4 goto :MAIN

:ADD_GOOGLE
cls
echo 구글 계열 사이트의 패치를 추가합니다.
echo 원하시는 사이트의 도메인 주소를 입력해주세요.
echo 예^) www.google.co.jp
echo.
set /p domain=도메인 주소를 입력하세요. 
@echo ON
echo 216.58.192.77 %domain%>> C:\Windows\System32\drivers\etc\hosts
@echo OFF
ping 127.0.0.1 -n 2 >nul
goto :ADVANCED

:ADD_YOUTUBE
cls
echo 유튜브 계열 사이트의 패치를 추가합니다.
echo 원하시는 사이트의 도메인 주소를 입력해주세요.
echo 예^) music.youtube.com
echo.
set /p domain=도메인 주소를 입력하세요. 
@echo ON
echo 216.58.192.174 %domain%>> C:\Windows\System32\drivers\etc\hosts
@echo OFF
ping 127.0.0.1 -n 2 >nul
goto :ADVANCED

:ADD_NEW_URL
cls
echo 새로운 사이트의 IP 패치를 추가합니다.
echo 원하시는 사이트의 우회 IP주소와 도메인 주소를 입력해주세요.
echo 예^) 216.58.192.77 www.google.co.jp
echo.
set /p domain=IP와 도메인을 입력해주세요. : 
@echo ON
echo %domain%>> C:\Windows\System32\drivers\etc\hosts
@echo OFF
ping 127.0.0.1 -n 2 >nul
goto :ADVANCED

pause>nul
