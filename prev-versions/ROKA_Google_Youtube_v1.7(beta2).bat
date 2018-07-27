@echo OFF

title ToonRaon 싸지방 구글, 유튜브 접속기

:MAIN

echo 1. 패치하기
echo 2. 패치 되돌리기
echo 3. 브라우저 설치 화면으로 이동
echo 4. 로그오프 화면으로 이동
echo.
set /p select=숫자를 입력해주세요. 
echo.

if %select% == 1 goto :PATCH
if %select% == 2 goto :UNPATCH
if %select% == 3 goto :BROWSER
if %select% == 4 goto :LOGOFF
goto :MAIN

:UNPATCH
if exist C:\Windows\System32\drivers\etc\hosts.bak (
 del C:\Windows\System32\drivers\etc\hosts
 ren C:\Windows\System32\drivers\etc\hosts.bak hosts
 echo 성공적으로 복원하였습니다.
 echo.
 goto :MAIN
)
echo 백업 파일이 존재하지 않습니다.
echo.
goto :MAIN

:PATCH

echo DNS를 변경합니다.
echo netsh interface ip set dns name= "로컬 영역 연결" static 8.8.8.8 primary

echo.
echo 변경된 DNS를 플러싱 합니다.
echo ipconfig /flushdns

echo.
echo ############################
echo.



echo.
echo hosts 파일을 백업합니다.
set hosts=C:\Windows\System32\drivers\etc\hosts
attrib -r -h -s %hosts%

copy %hosts% C:\Windows\System32\drivers\etc\hosts.bak
echo hosts 파일 백업이 완료되었습니다.

echo.
echo hosts 파일에 구글, 유튜브 ip를 추가합니다.


::공백 2줄 추가
echo.>> %hosts%
echo.>> %hosts%

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

echo 216.58.207.46 s.ytimg.com>> %hosts%
echo 216.58.205.238 i.ytimg.com>> %hosts%
echo 216.58.205.238 i9.ytimg.com>> %hosts%
echo 216.58.197.194 yt3.ggpht.com>> %hosts%


echo 216.58.192.77 172.217.26.46>> %hosts%


echo.
echo 패치가 완료되었습니다.

echo.
echo ############################
echo.


:BROWSER
echo.
echo 어떤 인터넷 브라우저를 다운로드 받으시겠습니까? (다운로드가 완료되면 다음 화면으로 넘어갑니다.)
echo.
echo 1. 네이버 웨일
echo 2. 오페라
echo 3. 파이어폭스
echo 4. 다운로드 하지 않음
echo 5. 프로그램 종료
echo.
set /p browser=숫자를 입력해주세요. 
echo.

echo 브라우저를 다운로드 받는 중입니다...
echo.
if %browser% == 1 goto :WHALE
if %browser% == 2 goto :OPERA
if %browser% == 3 goto :FIREFOX
if %browser% == 4 goto :LOGOFF
if %browser% == 5 exit

:WHALE
"C:\Program Files\Internet Explorer\iexplore.exe" http://update.whale.naver.net/downloads/installers/WhaleSetup.exe>nul
goto :LOGOFF

:OPERA
"C:\Program Files\Internet Explorer\iexplore.exe" https://www.opera.com/computer/thanks?ni=stable&os=windows
goto :LOGOFF

:WHALE
"C:\Program Files\Internet Explorer\iexplore.exe" https://www.mozilla.org/ko/firefox/download/thanks/
goto :LOGOFF



echo.
echo ############################
echo.

:LOGOFF
echo.
echo.
echo 로그오프를 하시겠습니까? (싸지방 2시간 이용 제한 해제)
echo.
echo 1. 지금 바로 로그오프
echo 2. 로그오프 하지 않고 처음 화면으로
echo 3. 프로그램 종료
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

pause>nul
