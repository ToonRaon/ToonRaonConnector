@echo OFF

set ver=v2.4

title ToonRaon ½ÎÁö¹æ ±¸±Û, À¯Æ©ºê Á¢¼Ó±â %ver%

rem ÆÄ¶õ ¹è°æ Èò ±Û¾¾
color 9f

rem ÇöÀç °æ·Î ÀúÀå
set PATH=%cd%

rem °æ·Î SYSTEM32·Î º¯°æ(¾È ±×·¯¸é ping ¸í·É¾î°¡ ¾È ¸ÔÈû)
cd C:\Windows\System32

mode con cols=80 lines=35



:MAIN
cls
echo.
echo                  ToonRaon ½ÎÁö¹æ ±¸±Û, À¯Æ©ºê Á¢¼Ó±â %ver%
echo.
echo                                             Á¢¼Ó±â ´Ù¿î·Îµå: http://toonraon.cf
echo                                                ¹®ÀÇ ¹× °ÇÀÇ: toonraon@naver.com
echo                                   ÄÚµå: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ¦®¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¯
echo  ¦­                                Ã³À½ È­¸é                                 ¦­
echo  ¦­¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤  ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢          1. ÆÐÄ¡ÇÏ±â           ¦¢  ¦¢        2. ÆÐÄ¡ µÇµ¹¸®±â        ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥  ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤  ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢       3. ºê¶ó¿ìÀú ¼³Ä¡         ¦¢  ¦¢       4. Á¢¼Ó±â È¨ÆäÀÌÁö       ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥  ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­                                                                          ¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢                              0. Advanced                             ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­                                                      ÇÁ·Î±×·¥ Á¾·á (Q/q) ¦­
echo  ¦±¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦°
echo.
set /p select=ÀÔ·Â: 
echo.

if %select% == 1 goto :PATCH
if %select% == 2 goto :UNPATCH
if %select% == 3 goto :BROWSER
if %select% == 4 goto :HOMEPAGE
if %select% == 0 goto :ADVANCED
if %select% == Q exit
if %select% == q exit

rem Àß¸ø ÀÔ·ÂÇÏ¿´À» °æ¿ì Ã³À½ È­¸éÀ¸·Î µ¹¾Æ°¡±â
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
 rem ¹é¾÷ ÆÄÀÏÀÌ Á¸ÀçÇÒ ¶§
 
 @echo ON
 del C:\Windows\System32\drivers\etc\hosts
 ren C:\Windows\System32\drivers\etc\hosts.bak hosts

 @echo OFF
 echo ¼º°øÀûÀ¸·Î º¹¿øÇÏ¿´½À´Ï´Ù.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
) else (
 rem ¹é¾÷ ÆÄÀÏ Á¸ÀçÇÏÁö ¾ÊÀ» ¶§
 
 echo ¹é¾÷ ÆÄÀÏÀÌ Á¸ÀçÇÏÁö ¾Ê½À´Ï´Ù.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
)

:PATCH
cls
echo DNS¸¦ º¯°æÇÕ´Ï´Ù.
netsh interface ip set dns "·ÎÄÃ ¿µ¿ª ¿¬°á" static 8.8.8.8 primary

echo.
echo º¯°æµÈ DNS¸¦ ÇÃ·¯½Ì ÇÕ´Ï´Ù.
ipconfig /flushdns

echo.
echo ############################
echo.



echo.
echo hosts ÆÄÀÏÀ» ¹é¾÷ÇÕ´Ï´Ù.
cd C:\Windows\System32\drivers\etc
attrib -r -h -s hosts

copy hosts C:\Windows\System32\drivers\etc\hosts.bak
echo hosts ÆÄÀÏ ¹é¾÷ÀÌ ¿Ï·áµÇ¾ú½À´Ï´Ù.

echo.
echo hosts ÆÄÀÏ¿¡ ±¸±Û, À¯Æ©ºê ip¸¦ Ãß°¡ÇÕ´Ï´Ù.

rem °ø¹é 2ÁÙ Ãß°¡
echo. >>hosts
echo. >>hosts

@echo ON
rem ±¸±Û °è¿­
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

rem ±¸±Û °è¿­2
echo 74.125.28.94 ssl.gstatic.com >>hosts
echo 216.58.219.131 gstatic.com >>hosts
echo 216.58.219.131 www.gstatic.com >>hosts

rem À¯Æ©ºê °è¿­
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

rem À¯Æ©ºê °è¿­2
echo 216.58.207.46 s.ytimg.com >>hosts
echo 216.58.205.238 i.ytimg.com >>hosts
echo 216.58.205.238 i9.ytimg.com >>hosts
echo 216.58.197.194 yt3.ggpht.com >>hosts

rem ±¸±Û Å©·Ò ¾÷µ¥ÀÌÆ® °ü·Ã
echo 216.58.192.77 172.217.26.46 >>hosts

@echo OFF

cd C:\Windows\System32

echo.
echo ÆÐÄ¡°¡ ¿Ï·áµÇ¾ú½À´Ï´Ù.

ping 127.0.0.1 -n 2 >nul


:BROWSER
cls
echo.
echo                  ToonRaon ½ÎÁö¹æ ±¸±Û, À¯Æ©ºê Á¢¼Ó±â %ver%
echo.
echo                                                ¹®ÀÇ ¹× °ÇÀÇ: toonraon@naver.com
echo                                   ÄÚµå: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ¦®¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¯
echo  ¦­                              ºê¶ó¿ìÀú ¼³Ä¡                               ¦­
echo  ¦­¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤  ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢         1. ³×ÀÌ¹ö ¿þÀÏ         ¦¢  ¦¢           2. ¿ÀÆä¶ó            ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥  ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤                                      ¦­
echo  ¦­¦¢         3. ÆÄÀÌ¾î Æø½º         ¦¢                                      ¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥                                      ¦­
echo  ¦­                                                                          ¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢                           0. Ã³À½ È­¸éÀ¸·Î                           ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­                                                      ÇÁ·Î±×·¥ Á¾·á (Q/q) ¦­
echo  ¦±¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦°
echo.
set /p select=ÀÔ·Â: 
echo.

echo ºê¶ó¿ìÀú¸¦ ´Ù¿î·Îµå ¹Þ´Â Áß ÀÔ´Ï´Ù...
echo.

if %select% == 1 "C:\Program Files\Internet Explorer\iexplore.exe" http://update.whale.naver.net/downloads/installers/WhaleSetup.exe>nul
if %select% == 2 "C:\Program Files\Internet Explorer\iexplore.exe" https://www.opera.com/computer/thanks?ni=stable&os=windows
if %select% == 3 "C:\Program Files\Internet Explorer\iexplore.exe" https://software.naver.com/software/summary.nhn?softwareId=MFS_100038
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem Àß¸ø ÀÔ·ÂÇÏ¿´À» °æ¿ì BROWSERÀ¸·Î µ¹¾Æ°¡±â
goto :BROWSER



:LOGOFF
cls
echo.
echo                  ToonRaon ½ÎÁö¹æ ±¸±Û, À¯Æ©ºê Á¢¼Ó±â %ver%
echo.
echo                                                ¹®ÀÇ ¹× °ÇÀÇ: toonraon@naver.com
echo                                   ÄÚµå: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ¦®¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¯
echo  ¦­                                ·Î±×¿ÀÇÁ                                  ¦­
echo  ¦­¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦­
echo  ¦­                 ·Î±×¿ÀÇÁ¸¦ ÇÒ °æ¿ì ½ÎÁö¹æ ÀÌ¿ë 2½Ã°£ ÀÌÈÄ                ¦­
echo  ¦­                  ÀÚµ¿À¸·Î ²¨Áö´Â Çö»óÀ» ¾ø¾Ù ¼ö ÀÖ½À´Ï´Ù.                ¦­
echo  ¦­                                                                          ¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤  ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢          1. ·Î±×¿ÀÇÁ           ¦¢  ¦¢       2. ·Î±×¿ÀÇÁ ¾È ÇÔ        ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥  ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­                                                                          ¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢                           0. Ã³À½ È­¸éÀ¸·Î                           ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­                                                      ÇÁ·Î±×·¥ Á¾·á (Q/q) ¦­
echo  ¦±¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦°
echo.
set /p select=ÀÔ·Â: 
echo.

if %select% == 1 shutdown -l
if %select% == 2 goto :MAIN
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem Àß¸ø ÀÔ·ÂÇÏ¿´À» °æ¿ì LOGOFF·Î µ¹¾Æ°¡±â
goto :LOGOFF



:ADVANCED
cls
echo.
echo                  ToonRaon ½ÎÁö¹æ ±¸±Û, À¯Æ©ºê Á¢¼Ó±â %ver%
echo.
echo                                                ¹®ÀÇ ¹× °ÇÀÇ: toonraon@naver.com
echo                                   ÄÚµå: github.com/ToonRaon/ROKA_Google_Youtube
echo.
echo  ¦®¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¯
echo  ¦­                                AVDANCED                                  ¦­
echo  ¦­¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦­
echo  ¦­         ÁÖÀÇ! °ü·Ã Áö½ÄÀÌ ¾ø´Â ºÐµé¿¡°Õ »ç¿ëÀ» ±ÇÇÏÁö ¾Ê½À´Ï´Ù.          ¦­
echo  ¦­                                                                          ¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤  ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢  1. ±¸±Û »çÀÌÆ® ÆÐÄ¡ Ãß°¡ÇÏ±â  ¦¢  ¦¢ 2. À¯Æ©ºê »çÀÌÆ® ÆÐÄ¡ Ãß°¡ÇÏ±â ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥  ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤  ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢  3. »õ·Î¿î IP¿Í URL µî·ÏÇÏ±â   ¦¢  ¦¢ 4. hosts ÆÄÀÏ ¸Þ¸ðÀåÀ¸·Î ¿­±â  ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥  ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤  ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢   5. ÀÌ ÆÄÀÏÀ» ÅØ½ºÆ®·Î ¿­±â   ¦¢  ¦¢      6. ÄÄÇ»ÅÍ ·Î±×¿ÀÇÁ        ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥  ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­                                                                          ¦­
echo  ¦­¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤¦­
echo  ¦­¦¢                           0. Ã³À½ È­¸éÀ¸·Î                           ¦¢¦­
echo  ¦­¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥¦­
echo  ¦­                                                      ÇÁ·Î±×·¥ Á¾·á (Q/q) ¦­
echo  ¦±¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦°
echo.
set /p select=ÀÔ·Â: 
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

rem Àß¸ø ÀÔ·ÂÇÏ¿´À» °æ¿ì ADVANCED·Î µ¹¾Æ°¡±â
goto :ADVANCED



:ADD_GOOGLE
cls
echo ÀÌ ±â´ÉÀº Á¦ÀÛÀÚ°¡ ¹ÌÃ³ Ãß°¡ÇÏ±â ¸øÇÑ ±¸±Û °ü·Ã »çÀÌÆ®^(¿¹¸¦ µé¾î google.co.jp^)¸¦ ¶ÕÀ» ¶§ Á÷Á¢ ÇØ´ç »çÀÌÆ®¸¦ ÆÐÄ¡ÇÒ ¼ö ÀÖ½À´Ï´Ù.
echo.
echo ±¸±Û °è¿­ »çÀÌÆ®ÀÇ ÆÐÄ¡¸¦ Ãß°¡ÇÕ´Ï´Ù.
echo ¿øÇÏ½Ã´Â »çÀÌÆ®ÀÇ µµ¸ÞÀÎ ÁÖ¼Ò¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä.
echo ¿¹^) www.google.co.jp
echo.
echo µ¹¾Æ°¡±â(B/b)
echo.
set /p domain=µµ¸ÞÀÎ ÁÖ¼Ò¸¦ ÀÔ·ÂÇÏ¼¼¿ä. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.77 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_YOUTUBE
cls
echo ÀÌ ±â´ÉÀº Á¦ÀÛÀÚ°¡ ¹ÌÃ³ Ãß°¡ÇÏ±â ¸øÇÑ À¯Æ©ºê °ü·Ã »çÀÌÆ®^(¿¹¸¦ µé¾î music.youtube.com^)¸¦ ¶ÕÀ» ¶§ Á÷Á¢ ÇØ´ç »çÀÌÆ®¸¦ ÆÐÄ¡ÇÒ ¼ö ÀÖ½À´Ï´Ù.
echo.
echo À¯Æ©ºê °è¿­ »çÀÌÆ®ÀÇ ÆÐÄ¡¸¦ Ãß°¡ÇÕ´Ï´Ù.
echo ¿øÇÏ½Ã´Â »çÀÌÆ®ÀÇ µµ¸ÞÀÎ ÁÖ¼Ò¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä.
echo ¿¹^) music.youtube.com
echo.
echo µ¹¾Æ°¡±â(B/b)
echo.
set /p domain=µµ¸ÞÀÎ ÁÖ¼Ò¸¦ ÀÔ·ÂÇÏ¼¼¿ä. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.174 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_NEW_URL
cls
echo ÀÌ ±â´ÉÀº Á¦ÀÛÀÚ°¡ ¹ÌÃ³ Ãß°¡ÇÏ±â ¸øÇÑ »çÀÌÆ®¸¦ ¶ÕÀ» ¶§ Á÷Á¢ ÇØ´ç »çÀÌÆ®¸¦ ÆÐÄ¡ÇÒ ¼ö ÀÖ½À´Ï´Ù.
echo.
echo ¸ðµç »çÀÌÆ®°¡ °¡´ÉÇÑ °ÍÀº ¾Æ´Ï¸ç, ±¸±ÛÀÌ³ª À¯Æ©ºêÃ³·³ ÇÏ³ªÀÇ µµ¸ÞÀÎ¿¡ ¿©·¯°¡Áö Á¢¼Ó IP¸¦ Á¦°øÇÏ´Â ´ëÇü ±Û·Î¹ú »çÀÌÆ®ÀÇ °æ¿ì¿¡¸¸ °¡´ÉÇÕ´Ï´Ù.
echo 172.xxx.xxx.xxx·Î ½ÃÀÛÇÏ´Â IP´Â ½ÎÁö¹æ¿¡¼­ Á¢¼Ó ºÒ°¡´ÉÇÕ´Ï´Ù.
echo.
echo »õ·Î¿î »çÀÌÆ®ÀÇ IP ÆÐÄ¡¸¦ Ãß°¡ÇÕ´Ï´Ù.
echo ¿øÇÏ½Ã´Â »çÀÌÆ®ÀÇ ¿ìÈ¸ IPÁÖ¼Ò¿Í µµ¸ÞÀÎ ÁÖ¼Ò¸¦ ÀÔ·ÂÇØÁÖ¼¼¿ä.
echo ¿¹^) 216.58.192.77 www.google.co.jp
echo.
echo µ¹¾Æ°¡±â(B/b)
echo.
set /p domain=IP¿Í µµ¸ÞÀÎÀ» ÀÔ·ÂÇØÁÖ¼¼¿ä. : 

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
