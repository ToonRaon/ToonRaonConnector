@echo OFF

set ver=v2.17

rem 현재 경로 저장
set PATH=%cd%

rem 경로 SYSTEM32로 변경(안 그러면 ping 명령어가 안 먹힘)
cd C:\Windows\System32

title ToonRaon 싸지방 구글, 유튜브 접속기 %ver%

color 0f



mode con cols=80 lines=35



:MAIN
cls
echo.
echo                  ToonRaon 싸지방 구글, 유튜브 접속기 %ver%
echo.
echo                                             접속기 다운로드: http://toonraon.cf
echo                                                문의 및 건의: toonraon@naver.com
echo                                     코드: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo  ┃                                처음 화면                                 ┃
echo  ┃─────────────────────────────────────┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│          1. 패치하기           │  │        2. 패치 되돌리기        │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│       3. 브라우저 설치         │  │       4. 접속기 홈페이지       │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐                                      ┃
echo  ┃│         5. 패치 내역           │                                      ┃
echo  ┃└────────────────┘                                      ┃
echo  ┃                                                                          ┃
echo  ┃┌───────────────────────────────────┐┃
echo  ┃│                                0. 고급                               │┃
echo  ┃└───────────────────────────────────┘┃
echo  ┃                                                      프로그램 종료 (Q/q) ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
set /p select=입력: 
echo.

if %select% == 1 goto :PATCH
if %select% == 2 goto :UNPATCH
if %select% == 3 goto :BROWSER
if %select% == 4 goto :HOMEPAGE
if %select% == 5 goto :CHANGELOG
if %select% == 0 goto :ADVANCED
if %select% == Q exit
if %select% == q exit

rem 잘못 입력하였을 경우 처음 화면으로 돌아가기
goto :MAIN


:CHANGELOG
cls

rem 패치때마다 반드시 수정할 것

echo ========== %ver% 패치 내역 ==========
echo.

echo 1. 구글 행아웃 패치 추가
echo 2. 유튜브 아이피 변경


pause>nul

goto :MAIN



:UNPATCH
cls
if exist C:\Windows\System32\drivers\etc\hosts.bak (
 rem 백업 파일이 존재할 때
 
 @echo ON
 del C:\Windows\System32\drivers\etc\hosts
 ren C:\Windows\System32\drivers\etc\hosts.bak hosts

 @echo OFF
 echo 성공적으로 복원하였습니다.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
) else (
 rem 백업 파일 존재하지 않을 때
 
 echo 백업 파일이 존재하지 않습니다.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
)

:PATCH
cls
echo DNS를 변경합니다.
netsh interface ip set dns "로컬 영역 연결" static 1.1.1.1 primary

echo.
echo 변경된 DNS를 플러싱 합니다.
ipconfig /flushdns

echo.
echo ############################
echo.



echo.
echo hosts 파일을 백업합니다.
cd C:\Windows\System32\drivers\etc
attrib -r -h -s hosts

copy hosts C:\Windows\System32\drivers\etc\hosts.bak
echo hosts 파일 백업이 완료되었습니다.

echo.
echo hosts 파일에 구글, 유튜브 ip를 추가합니다.

rem 공백 2줄 추가
echo.>>hosts
echo.>>hosts

@echo ON
rem 구글 계열
echo 216.58.192.42 www.google.co.kr>>hosts
echo 216.58.192.42 google.co.kr>>hosts
echo 216.58.192.42 accounts.google.co.kr>>hosts
echo 216.58.192.42 accounts.google.com>>hosts
echo 216.58.192.42 www.google.com>>hosts
echo 216.58.192.42 developers.google.com>>hosts
echo 216.58.192.42 opensource.google.com>>hosts
echo 216.58.192.42 dl.google.com>>hosts
echo 216.58.192.42 cache.pack.google.com>>hosts
echo 216.58.192.42 code.google.com>>hosts
echo 216.58.192.42 tools.google.com>>hosts
echo 216.58.192.42 chrome.google.com>>hosts
echo 216.58.192.42 update.googleapis.com>>hosts
echo 216.58.192.42 trends.google.com>>hosts
echo 216.58.192.42 trends.google.co.kr>>hosts
echo 216.58.192.42 google.com>>hosts
echo 216.58.192.42 support.google.com>>hosts
echo 216.58.192.42 goo.gl>>hosts
echo 216.58.192.42 drive.google.com>>hosts
echo 216.58.192.42 drivers.google.com>>hosts
echo 216.58.192.42 store.google.com>>hosts
echo 216.58.192.42 api.google.com>>hosts
echo 216.58.192.42 play.google.com>>hosts
echo 216.58.192.42 firebase.google.com>>hosts
echo 216.58.192.42 mail.google.com>>hosts
echo 216.58.192.42 gmail.com>>hosts
echo 216.58.192.42 docs.google.com>>hosts
echo 216.58.192.42 analytics.google.com>>hosts
echo 216.58.192.42 fonts.google.apis.com>>hosts
echo 216.58.192.42 fonts.googleapis.com>>hosts
echo 216.58.192.42 fonts.gstatic.com>>hosts
echo 216.58.192.42 manifest.googlevideo.com>>hosts
echo 216.58.192.42 translate.google.com>>hosts
echo 216.58.192.42 maps.google.com>>hosts
echo 216.58.192.42 maps.google.co.kr>>hosts
echo 216.58.192.42 www.maps.google.com>>hosts
echo 216.58.192.42 www.maps.google.co.kr>>hosts
echo 216.58.192.42 www.blogger.com>>hosts
echo 216.58.192.42 blogger.com>>hosts
echo 216.58.192.42 www.blogspot.com>>hosts
echo 216.58.192.42 blogspot.com>>hosts
echo 216.58.192.42 clientservices.googleapis.com>>hosts
echo 216.58.192.42 ssl.google-anaytics.com>>hosts
echo 216.58.192.42 adservice.google.co.kr>>hosts
echo 216.58.192.42 www.googletagmanager.com>>hosts
echo 216.58.192.42 safebrowsing.googleapis.com>>hosts
echo 216.58.192.42 encrypted-tbn0.gstatic.com>>hosts
echo 216.58.192.42 beacons.gcp.gvt2.com>>hosts
echo 216.58.192.42 clients4.google.co.kr>>hosts
echo 216.58.192.42 mwultong.blogspot.com>>hosts
echo 216.58.192.42 fonts.google.com>>hosts
echo 216.58.192.42 ajax.googleapis.com>>hosts
echo 216.58.192.42 www.googleadservices.com>>hosts
echo 216.58.192.42 googleadservices.com>>hosts
echo 216.58.192.42 www.google-analytics.com>>hosts
echo 216.58.192.42 google-analytics.com>>hosts
echo 216.58.192.42 gstatic.com>>hosts
echo 216.58.192.42 www.gstatic.com>>hosts
echo 216.58.192.42 ssl.gstatic.com>>hosts
echo 216.58.192.42 myaccount.google.com>>hosts
echo 216.58.192.42 passwords.google.com>>hosts
echo 216.58.192.42 ogs.google.com>>hosts
echo 216.58.192.42 apis.google.com>>hosts
echo 216.58.192.42 clients.l.google.com>>hosts
echo 216.58.192.42 client1.google.com>>hosts
echo 216.58.192.42 client2.google.com>>hosts
echo 216.58.192.42 client3.google.com>>hosts
echo 216.58.192.42 client4.google.com>>hosts
echo 216.58.192.42 client5.google.com>>hosts
echo 216.58.192.42 client6.google.com>>hosts
echo 216.58.192.42 clients1.google.com>>hosts
echo 216.58.192.42 clients2.google.com>>hosts
echo 216.58.192.42 clients3.google.com>>hosts
echo 216.58.192.42 clients4.google.com>>hosts
echo 216.58.192.42 clients5.google.com>>hosts
echo 216.58.192.42 clients6.google.com>>hosts
echo 216.58.192.42 googlehosted.l.googleusercontent.com>>hosts
echo 216.58.192.42 clients1.googleusercontent.com>>hosts
echo 216.58.192.42 clients2.googleusercontent.com>>hosts
echo 216.58.192.42 clients3.googleusercontent.com>>hosts
echo 216.58.192.42 clients4.googleusercontent.com>>hosts
echo 216.58.192.42 clients5.googleusercontent.com>>hosts
echo 216.58.192.42 clients6.googleusercontent.com>>hosts
echo 216.58.192.42 ih1.googleusercontent.com>>hosts
echo 216.58.192.42 ih2.googleusercontent.com>>hosts
echo 216.58.192.42 ih3.googleusercontent.com>>hosts
echo 216.58.192.42 ih4.googleusercontent.com>>hosts
echo 216.58.192.42 ih5.googleusercontent.com>>hosts
echo 216.58.192.42 ih6.googleusercontent.com>>hosts
echo 216.58.192.42 notifications.google.com>>hosts
echo 216.58.192.42 chrome-devtools-frontend.appspot.com>>hosts
echo 216.58.192.42 googleapis.l.google.com>>hosts
echo 216.58.192.42 www.googleapis.com>>hosts
echo 216.58.192.42 ssl.google-analytics.com>>hosts
echo 216.58.192.42 plus.google.com>>hosts
echo 216.58.192.42 books.google.com>>hosts
echo 216.58.192.42 books.google.co.kr>>hosts
echo 216.58.192.42 maps.googleapis.com>>hosts
echo 216.58.192.42 lh1.googleusercontent.com>>hosts
echo 216.58.192.42 lh2.googleusercontent.com>>hosts
echo 216.58.192.42 lh3.googleusercontent.com>>hosts
echo 216.58.192.42 lh4.googleusercontent.com>>hosts
echo 216.58.192.42 lh5.googleusercontent.com>>hosts
echo 216.58.192.42 lh6.googleusercontent.com>>hosts
echo 216.58.192.42 maps.gstatic.com>>hosts
echo 216.58.192.42 incrementalwebfonts-pa.googleapis.com>>hosts
echo 216.58.192.42 hangouts.google.com>>hosts



rem 광고 차단
echo 127.0.0.1 cm.g.doubleclick.net>>hosts
echo 127.0.0.1 googleads.g.doubleclick.net>>hosts
echo 127.0.0.1 pagead2.googlesyndication.com>>hosts

rem 유튜브 계열
echo 216.58.192.42 www.youtube.com>>hosts
echo 216.58.192.42 www.youtube.co.kr>>hosts
echo 216.58.192.42 youtube.com>>hosts
echo 216.58.192.42 youtu.be>>hosts
echo 216.58.192.42 youtube.co.kr>>hosts
echo 216.58.192.42 accounts.youtube.com>>hosts
echo 216.58.192.42 studio.youtube.com>>hosts
echo 216.58.192.42 tv.youtube.com>>hosts
echo 216.58.192.42 music.youtube.com>>hosts
echo 216.58.192.42 gaming.youtube.com>>hosts
echo 216.58.192.42 kids.youtube.com>>hosts
echo 216.58.192.42 s.ytimg.com>>hosts
echo 216.58.192.42 i.ytimg.com>>hosts
echo 216.58.192.42 i9.ytimg.com>>hosts
echo 216.58.192.42 yt3.ggpht.com>>hosts
echo 216.58.192.42 lh3.googleusercontent.com>>hosts

rem 트위터
echo 117.18.237.70 abs.twimg.com>>hosts
echo 117.18.237.70 pbs.twimg.com>>hosts
echo 117.18.232.102 video.twimg.com>>hosts

rem ncloud
echo 127.0.0.1 browser-update.org>>hosts

rem 카카오tv
echo 216.58.192.42 imasdk.googleapis.com>>hosts

rem 깃헙
echo 13.229.188.59 github.com>>hosts
echo 52.74.223.119 github.com>>hosts
echo 13.250.177.223 github.com>>hosts


@echo OFF

cd C:\Windows\System32

echo.
echo 패치가 완료되었습니다.

ping 127.0.0.1 -n 2 >nul


:BROWSER
cls
echo.
echo                  ToonRaon 싸지방 구글, 유튜브 접속기 %ver%
echo.
echo                                                문의 및 건의: toonraon@naver.com
echo                                     코드: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo  ┃                              브라우저 설치                               ┃
echo  ┃─────────────────────────────────────┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│         1. 네이버 웨일         │  │           2. 오페라            │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│         3. 파이어 폭스         │  │         4. 구글 크롬           │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃                                                                          ┃
echo  ┃┌───────────────────────────────────┐┃
echo  ┃│                           0. 처음 화면으로                           │┃
echo  ┃└───────────────────────────────────┘┃
echo  ┃                                                      프로그램 종료 (Q/q) ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
set /p select=입력: 
echo.

echo 브라우저를 다운로드 받는 중 입니다...
echo.

if %select% == 1 start https://whale.naver.com/>nul
if %select% == 2 start https://www.opera.com/ko>nul
if %select% == 3 start https://www.mozilla.org/ko/firefox/new/>nul
if %select% == 4 start https://www.google.com/intl/ko_ALL/chrome/>nul
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem 잘못 입력하였을 경우 BROWSER으로 돌아가기
goto :BROWSER



:LOGOFF
cls
echo.
echo                  ToonRaon 싸지방 구글, 유튜브 접속기 %ver%
echo.
echo                                                문의 및 건의: toonraon@naver.com
echo                                     코드: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo  ┃                                로그오프                                  ┃
echo  ┃─────────────────────────────────────┃
echo  ┃                 로그오프를 할 경우 싸지방 이용 2시간 이후                ┃
echo  ┃                  자동으로 꺼지는 현상을 없앨 수 있습니다.                ┃
echo  ┃                                                                          ┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│          1. 로그오프           │  │       2. 로그오프 안 함        │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃                                                                          ┃
echo  ┃┌───────────────────────────────────┐┃
echo  ┃│                           0. 처음 화면으로                           │┃
echo  ┃└───────────────────────────────────┘┃
echo  ┃                                                      프로그램 종료 (Q/q) ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
set /p select=입력: 
echo.

if %select% == 1 shutdown -l
if %select% == 2 goto :MAIN
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem 잘못 입력하였을 경우 LOGOFF로 돌아가기
goto :LOGOFF



:ADVANCED
cls
echo.
echo                  ToonRaon 싸지방 구글, 유튜브 접속기 %ver%
echo.
echo                                                문의 및 건의: toonraon@naver.com
echo                                     코드: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo  ┃                                  고급                                    ┃
echo  ┃─────────────────────────────────────┃
echo  ┃         주의! 관련 지식이 없는 분들에겐 사용을 권하지 않습니다.          ┃
echo  ┃                                                                          ┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│  1. 구글 사이트 패치 추가하기  │  │ 2. 유튜브 사이트 패치 추가하기 │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│  3. 새로운 IP와 URL 등록하기   │  │ 4. hosts 파일 메모장으로 열기  │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│   5. 이 파일을 텍스트로 열기   │  │      6. 컴퓨터 로그오프        │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│     7. 글자색/배경색 변경      │  │          8. tracert            │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐  ┌────────────────┐┃
echo  ┃│            9. ping             │  │         a. 폴더 생성           │┃
echo  ┃└────────────────┘  └────────────────┘┃
echo  ┃┌────────────────┐                                      ┃
echo  ┃│   b. 파일 이름, 확장자 변경    │                                      ┃
echo  ┃└────────────────┘                                      ┃
echo  ┃                                                                          ┃
echo  ┃┌───────────────────────────────────┐┃
echo  ┃│                           0. 처음 화면으로                           │┃
echo  ┃└───────────────────────────────────┘┃
echo  ┃                                                      프로그램 종료 (Q/q) ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
set /p select=입력: 
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

rem 잘못 입력하였을 경우 ADVANCED로 돌아가기
goto :ADVANCED



:ADD_GOOGLE
cls
echo 이 기능은 제작자가 미처 추가하기 못한 구글 관련 사이트^(예를 들어 google.co.jp^)를 뚫을 때 직접 해당 사이트를 패치할 수 있습니다.
echo.
echo 구글 계열 사이트의 패치를 추가합니다.
echo 원하시는 사이트의 도메인 주소를 입력해주세요.
echo 예^) www.google.co.jp
echo.
echo 돌아가기(B/b)
echo.
set /p domain=도메인 주소를 입력하세요. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.42 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_YOUTUBE
cls
echo 이 기능은 제작자가 미처 추가하기 못한 유튜브 관련 사이트^(예를 들어 music.youtube.com^)를 뚫을 때 직접 해당 사이트를 패치할 수 있습니다.
echo.
echo 유튜브 계열 사이트의 패치를 추가합니다.
echo 원하시는 사이트의 도메인 주소를 입력해주세요.
echo 예^) music.youtube.com
echo.
echo 돌아가기(B/b)
echo.
set /p domain=도메인 주소를 입력하세요. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.42 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_NEW_URL
cls
echo 이 기능은 제작자가 미처 추가하기 못한 사이트를 뚫을 때 직접 해당 사이트를 패치할 수 있습니다.
echo.
echo 모든 사이트가 가능한 것은 아니며, 구글이나 유튜브처럼 하나의 도메인에 여러가지 접속 IP를 제공하는 대형 글로벌 사이트의 경우에만 가능합니다.
echo 172.xxx.xxx.xxx로 시작하는 IP는 싸지방에서 접속 불가능합니다.
echo.
echo 새로운 사이트의 IP 패치를 추가합니다.
echo 원하시는 사이트의 우회 IP주소와 도메인 주소를 입력해주세요.
echo 예^) 216.58.192.42 www.google.co.jp
echo.
echo 돌아가기(B/b)
echo.
set /p domain=IP와 도메인을 입력해주세요. : 

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
echo                  ToonRaon 싸지방 구글, 유튜브 접속기 %ver%
echo.
echo                                             접속기 다운로드: http://toonraon.cf
echo                                                문의 및 건의: toonraon@naver.com
echo                                     코드: github.com/ToonRaon/ToonRaonConnector
echo.
echo  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo  ┃                                색상 변경                                 ┃
echo  ┃─────────────────────────────────────┃
echo  ┃            아래의 색상표를 참고하여 원하는 색으로 변경하세요.            ┃
echo  ┃                 초록 배경 ^& 검은 글씨로 설정하고 싶다면                  ┃
echo  ┃                   20라고 입력하면 됩니다. (띄어쓰기 X)                   ┃
echo  ┃─────────────────────────────────────┃
echo  ┃                                                                          ┃
echo  ┃                     0 = 검정색          8 = 진회색                       ┃
echo  ┃                     1 = 파란색          9 = 연파랑                       ┃
echo  ┃                     2 = 초록색          a = 연초록                       ┃
echo  ┃                     3 = 하늘색          b = 연하늘                       ┃
echo  ┃                     4 = 빨간색          c = 연빨강                       ┃
echo  ┃                     5 = 보라색          d = 연보라                       ┃
echo  ┃                     6 = 노란색          e = 연노랑                       ┃
echo  ┃                     7 = 연회색          f = 하얀색                       ┃
echo  ┃                                                                          ┃
echo  ┃┌───────────────────────────────────┐┃
echo  ┃│                              0. 처음으로                             │┃
echo  ┃└───────────────────────────────────┘┃
echo  ┃                                                      프로그램 종료 (Q/q) ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.

set /p select=입력: 
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
echo tracert 할 도메인 혹은 ip를 입력하세요. ^(뒤로 가려면 b 입력^)
echo.
set /p select=입력: 

if %select%==b goto :ADVANCED
if %select%==B goto :ADVANCED

@echo ON
tracert -d %select%
@echo OFF

pause
goto :ADVANCED



:PING
cls
echo ping을 보낼 도메인 혹은 ip를 입력하세요. ^(뒤로 가려면 b 입력^)
echo.
set /p select=입력: 

if %select%==b goto :ADVANCED
if %select%==B goto :ADVANCED

@echo ON
ping -w 1000 %select%
@echo OFF

pause
goto :ADVANCED



:GEN_DIR
cls
echo 폴더를 생성할 경로를 입력하세요.
set /p path=경로: 

cd %path%

echo.
echo 생성할 폴더 이름을 입력하세요.
set /p name=폴더 이름: 

md %name%

cd C:\Windows\System32

goto :ADVANCED




:REN
cls
echo 이름을 바꿀 파일이 존재하는 폴더 경로를 입력하세요.
set /p path=경로: 

cd %path%

echo.
echo ========== 파일 목록 ==========
echo.
dir

echo.
echo 바꿀 파일의 이름과 확장자를 입력하세요.
set /p name=바꿀 파일: 

echo.
echo 새로운 이름과 확장자를 입력하세요.
set /p new_name=새로운 이름과 확장자: 

ren %name% %new_name%

cd C:\Windows\System32

goto :ADVANCED


pause>nul
