@echo OFF

set ver=v2.17

rem ⑷營 唳煎 盪濰
set PATH=%cd%

rem 唳煎 SYSTEM32煎 滲唳(寰 斜楝賊 ping 貲滄橫陛 寰 詳��)
cd C:\Windows\System32

title ToonRaon 諄雖寞 掘旋, 嶸ぅ粽 蕾樓晦 %ver%

color 0f



mode con cols=80 lines=35



:MAIN
cls
echo.
echo                  ToonRaon 諄雖寞 掘旋, 嶸ぅ粽 蕾樓晦 %ver%
echo.
echo                                             蕾樓晦 棻遴煎萄: http://toonraon.cf
echo                                                僥曖 塽 勒曖: toonraon@naver.com
echo                                     囀萄: github.com/ToonRaon/ToonRaonConnector
echo.
echo  旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旬
echo  早                                籀擠 �飛�                                 早
echo  早式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛          1. ぬ纂ж晦           弛  弛        2. ぬ纂 腎給葬晦        弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛       3. 粽塭辦盪 撲纂         弛  弛       4. 蕾樓晦 �事靺攽�       弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖                                      早
echo  早弛         5. ぬ纂 頂羲           弛                                      早
echo  早戌式式式式式式式式式式式式式式式式戎                                      早
echo  早                                                                          早
echo  早忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式忖早
echo  早弛                                0. 堅晝                               弛早
echo  早戌式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式戎早
echo  早                                                      Щ煎斜極 謙猿 (Q/q) 早
echo  曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭
echo.
set /p select=殮溘: 
echo.

if %select% == 1 goto :PATCH
if %select% == 2 goto :UNPATCH
if %select% == 3 goto :BROWSER
if %select% == 4 goto :HOMEPAGE
if %select% == 5 goto :CHANGELOG
if %select% == 0 goto :ADVANCED
if %select% == Q exit
if %select% == q exit

rem 澀跤 殮溘ж艘擊 唳辦 籀擠 �飛橉虞� 給嬴陛晦
goto :MAIN


:CHANGELOG
cls

rem ぬ纂陽葆棻 奩萄衛 熱薑й 匙

echo ========== %ver% ぬ纂 頂羲 ==========
echo.

echo 1. 掘旋 ч嬴醒 ぬ纂 蹺陛
echo 2. 嶸ぅ粽 嬴檜Я 滲唳


pause>nul

goto :MAIN



:UNPATCH
cls
if exist C:\Windows\System32\drivers\etc\hosts.bak (
 rem 寥機 だ橾檜 襄營й 陽
 
 @echo ON
 del C:\Windows\System32\drivers\etc\hosts
 ren C:\Windows\System32\drivers\etc\hosts.bak hosts

 @echo OFF
 echo 撩奢瞳戲煎 犒錳ж艘蝗棲棻.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
) else (
 rem 寥機 だ橾 襄營ж雖 彊擊 陽
 
 echo 寥機 だ橾檜 襄營ж雖 彊蝗棲棻.
 ping 127.0.0.1 -n 2 >nul

 goto :MAIN
)

:PATCH
cls
echo DNS蒂 滲唳м棲棻.
netsh interface ip set dns "煎鏽 艙羲 翱唸" static 1.1.1.1 primary

echo.
echo 滲唳脹 DNS蒂 Ы楝諒 м棲棻.
ipconfig /flushdns

echo.
echo ############################
echo.



echo.
echo hosts だ橾擊 寥機м棲棻.
cd C:\Windows\System32\drivers\etc
attrib -r -h -s hosts

copy hosts C:\Windows\System32\drivers\etc\hosts.bak
echo hosts だ橾 寥機檜 諫猿腎歷蝗棲棻.

echo.
echo hosts だ橾縑 掘旋, 嶸ぅ粽 ip蒂 蹺陛м棲棻.

rem 奢寥 2還 蹺陛
echo.>>hosts
echo.>>hosts

@echo ON
rem 掘旋 啗翮
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



rem 惜堅 離欽
echo 127.0.0.1 cm.g.doubleclick.net>>hosts
echo 127.0.0.1 googleads.g.doubleclick.net>>hosts
echo 127.0.0.1 pagead2.googlesyndication.com>>hosts

rem 嶸ぅ粽 啗翮
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

rem お嬪攪
echo 117.18.237.70 abs.twimg.com>>hosts
echo 117.18.237.70 pbs.twimg.com>>hosts
echo 117.18.232.102 video.twimg.com>>hosts

rem ncloud
echo 127.0.0.1 browser-update.org>>hosts

rem 蘋蘋螃tv
echo 216.58.192.42 imasdk.googleapis.com>>hosts

rem 葆檜觼煎模Щお
echo 93.184.215.201 cs10.wpc.v0cdn.net>>hosts
echo 93.184.215.201 download.visualstudio.microsoft.com>>hosts

@echo OFF

cd C:\Windows\System32

echo.
echo ぬ纂陛 諫猿腎歷蝗棲棻.

ping 127.0.0.1 -n 2 >nul


:BROWSER
cls
echo.
echo                  ToonRaon 諄雖寞 掘旋, 嶸ぅ粽 蕾樓晦 %ver%
echo.
echo                                                僥曖 塽 勒曖: toonraon@naver.com
echo                                     囀萄: github.com/ToonRaon/ToonRaonConnector
echo.
echo  旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旬
echo  早                              粽塭辦盪 撲纂                               早
echo  早式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛         1. 啻檜幗 錚橾         弛  弛           2. 螃む塭            弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛         3. だ檜橫 ァ蝶         弛  弛         4. 掘旋 觼煉           弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早                                                                          早
echo  早忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式忖早
echo  早弛                           0. 籀擠 �飛橉虞�                           弛早
echo  早戌式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式戎早
echo  早                                                      Щ煎斜極 謙猿 (Q/q) 早
echo  曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭
echo.
set /p select=殮溘: 
echo.

echo 粽塭辦盪蒂 棻遴煎萄 嫡朝 醞 殮棲棻...
echo.

if %select% == 1 start https://whale.naver.com/>nul
if %select% == 2 start https://www.opera.com/ko>nul
if %select% == 3 start https://www.mozilla.org/ko/firefox/new/>nul
if %select% == 4 start https://www.google.com/intl/ko_ALL/chrome/>nul
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem 澀跤 殮溘ж艘擊 唳辦 BROWSER戲煎 給嬴陛晦
goto :BROWSER



:LOGOFF
cls
echo.
echo                  ToonRaon 諄雖寞 掘旋, 嶸ぅ粽 蕾樓晦 %ver%
echo.
echo                                                僥曖 塽 勒曖: toonraon@naver.com
echo                                     囀萄: github.com/ToonRaon/ToonRaonConnector
echo.
echo  旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旬
echo  早                                煎斜螃Щ                                  早
echo  早式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式早
echo  早                 煎斜螃Щ蒂 й 唳辦 諄雖寞 檜辨 2衛除 檜��                早
echo  早                  濠翕戲煎 疏雖朝 ⑷鼻擊 橈撼 熱 氈蝗棲棻.                早
echo  早                                                                          早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛          1. 煎斜螃Щ           弛  弛       2. 煎斜螃Щ 寰 л        弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早                                                                          早
echo  早忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式忖早
echo  早弛                           0. 籀擠 �飛橉虞�                           弛早
echo  早戌式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式戎早
echo  早                                                      Щ煎斜極 謙猿 (Q/q) 早
echo  曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭
echo.
set /p select=殮溘: 
echo.

if %select% == 1 shutdown -l
if %select% == 2 goto :MAIN
if %select% == 0 goto :MAIN
if %select% == Q exit
if %select% == q exit

rem 澀跤 殮溘ж艘擊 唳辦 LOGOFF煎 給嬴陛晦
goto :LOGOFF



:ADVANCED
cls
echo.
echo                  ToonRaon 諄雖寞 掘旋, 嶸ぅ粽 蕾樓晦 %ver%
echo.
echo                                                僥曖 塽 勒曖: toonraon@naver.com
echo                                     囀萄: github.com/ToonRaon/ToonRaonConnector
echo.
echo  旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旬
echo  早                                  堅晝                                    早
echo  早式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式早
echo  早         輿曖! 婦溼 雖衝檜 橈朝 碟菟縑啦 餌辨擊 掏ж雖 彊蝗棲棻.          早
echo  早                                                                          早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛  1. 掘旋 餌檜お ぬ纂 蹺陛ж晦  弛  弛 2. 嶸ぅ粽 餌檜お ぬ纂 蹺陛ж晦 弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛  3. 億煎遴 IP諦 URL 蛔煙ж晦   弛  弛 4. hosts だ橾 詭賅濰戲煎 翮晦  弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛   5. 檜 だ橾擊 臢蝶お煎 翮晦   弛  弛      6. 闡У攪 煎斜螃Щ        弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛     7. 旋濠儀/寡唳儀 滲唳      弛  弛          8. tracert            弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖  忙式式式式式式式式式式式式式式式式忖早
echo  早弛            9. ping             弛  弛         a. ィ渦 儅撩           弛早
echo  早戌式式式式式式式式式式式式式式式式戎  戌式式式式式式式式式式式式式式式式戎早
echo  早忙式式式式式式式式式式式式式式式式忖                                      早
echo  早弛   b. だ橾 檜葷, �挫敻� 滲唳    弛                                      早
echo  早戌式式式式式式式式式式式式式式式式戎                                      早
echo  早                                                                          早
echo  早忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式忖早
echo  早弛                           0. 籀擠 �飛橉虞�                           弛早
echo  早戌式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式戎早
echo  早                                                      Щ煎斜極 謙猿 (Q/q) 早
echo  曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭
echo.
set /p select=殮溘: 
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

rem 澀跤 殮溘ж艘擊 唳辦 ADVANCED煎 給嬴陛晦
goto :ADVANCED



:ADD_GOOGLE
cls
echo 檜 晦棟擎 薯濛濠陛 嘐籀 蹺陛ж晦 跤и 掘旋 婦溼 餌檜お^(蕨蒂 菟橫 google.co.jp^)蒂 勢擊 陽 霜蕾 п渡 餌檜お蒂 ぬ纂й 熱 氈蝗棲棻.
echo.
echo 掘旋 啗翮 餌檜お曖 ぬ纂蒂 蹺陛м棲棻.
echo 錳ж衛朝 餌檜お曖 紫詭檣 輿模蒂 殮溘п輿撮蹂.
echo 蕨^) www.google.co.jp
echo.
echo 給嬴陛晦(B/b)
echo.
set /p domain=紫詭檣 輿模蒂 殮溘ж撮蹂. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.42 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_YOUTUBE
cls
echo 檜 晦棟擎 薯濛濠陛 嘐籀 蹺陛ж晦 跤и 嶸ぅ粽 婦溼 餌檜お^(蕨蒂 菟橫 music.youtube.com^)蒂 勢擊 陽 霜蕾 п渡 餌檜お蒂 ぬ纂й 熱 氈蝗棲棻.
echo.
echo 嶸ぅ粽 啗翮 餌檜お曖 ぬ纂蒂 蹺陛м棲棻.
echo 錳ж衛朝 餌檜お曖 紫詭檣 輿模蒂 殮溘п輿撮蹂.
echo 蕨^) music.youtube.com
echo.
echo 給嬴陛晦(B/b)
echo.
set /p domain=紫詭檣 輿模蒂 殮溘ж撮蹂. 

if %domain% == B goto :ADVANCED
if %domain% == b goto :ADVANCED

@echo ON
echo 216.58.192.42 %domain%>> C:\Windows\System32\drivers\etc\hosts

@echo OFF
ping 127.0.0.1 -n 2 >nul

goto :ADVANCED

:ADD_NEW_URL
cls
echo 檜 晦棟擎 薯濛濠陛 嘐籀 蹺陛ж晦 跤и 餌檜お蒂 勢擊 陽 霜蕾 п渡 餌檜お蒂 ぬ纂й 熱 氈蝗棲棻.
echo.
echo 賅萇 餌檜お陛 陛棟и 匙擎 嬴棲貊, 掘旋檜釭 嶸ぅ粽籀歲 ж釭曖 紫詭檣縑 罹楝陛雖 蕾樓 IP蒂 薯奢ж朝 渠⑽ 旋煎弊 餌檜お曖 唳辦縑虜 陛棟м棲棻.
echo 172.xxx.xxx.xxx煎 衛濛ж朝 IP朝 諄雖寞縑憮 蕾樓 碳陛棟м棲棻.
echo.
echo 億煎遴 餌檜お曖 IP ぬ纂蒂 蹺陛м棲棻.
echo 錳ж衛朝 餌檜お曖 辦�� IP輿模諦 紫詭檣 輿模蒂 殮溘п輿撮蹂.
echo 蕨^) 216.58.192.42 www.google.co.jp
echo.
echo 給嬴陛晦(B/b)
echo.
set /p domain=IP諦 紫詭檣擊 殮溘п輿撮蹂. : 

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
echo                  ToonRaon 諄雖寞 掘旋, 嶸ぅ粽 蕾樓晦 %ver%
echo.
echo                                             蕾樓晦 棻遴煎萄: http://toonraon.cf
echo                                                僥曖 塽 勒曖: toonraon@naver.com
echo                                     囀萄: github.com/ToonRaon/ToonRaonConnector
echo.
echo  旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旬
echo  早                                儀鼻 滲唳                                 早
echo  早式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式早
echo  早            嬴楚曖 儀鼻ル蒂 霤堅ж罹 錳ж朝 儀戲煎 滲唳ж撮蹂.            早
echo  早                 蟾煙 寡唳 ^& 匐擎 旋噢煎 撲薑ж堅 談棻賊                  早
echo  早                   20塭堅 殮溘ж賊 腌棲棻. (嗥橫噙晦 X)                   早
echo  早式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式早
echo  早                                                                          早
echo  早                     0 = 匐薑儀          8 = 霞�蜓�                       早
echo  早                     1 = だ塢儀          9 = 翱だ嫌                       早
echo  早                     2 = 蟾煙儀          a = 翱蟾煙                       早
echo  早                     3 = ж棺儀          b = 翱ж棺                       早
echo  早                     4 = 說除儀          c = 翱說鬼                       早
echo  早                     5 = 爾塭儀          d = 翱爾塭                       早
echo  早                     6 = 喻塢儀          e = 翱喻嫌                       早
echo  早                     7 = 翱�蜓�          f = ж擔儀                       早
echo  早                                                                          早
echo  早忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式忖早
echo  早弛                              0. 籀擠戲煎                             弛早
echo  早戌式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式戎早
echo  早                                                      Щ煎斜極 謙猿 (Q/q) 早
echo  曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭
echo.

set /p select=殮溘: 
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
echo tracert й 紫詭檣 �分� ip蒂 殮溘ж撮蹂. ^(菴煎 陛溥賊 b 殮溘^)
echo.
set /p select=殮溘: 

if %select%==b goto :ADVANCED
if %select%==B goto :ADVANCED

@echo ON
tracert -d %select%
@echo OFF

pause
goto :ADVANCED



:PING
cls
echo ping擊 爾鳥 紫詭檣 �分� ip蒂 殮溘ж撮蹂. ^(菴煎 陛溥賊 b 殮溘^)
echo.
set /p select=殮溘: 

if %select%==b goto :ADVANCED
if %select%==B goto :ADVANCED

@echo ON
ping -w 1000 %select%
@echo OFF

pause
goto :ADVANCED



:GEN_DIR
cls
echo ィ渦蒂 儅撩й 唳煎蒂 殮溘ж撮蹂.
set /p path=唳煎: 

cd %path%

echo.
echo 儅撩й ィ渦 檜葷擊 殮溘ж撮蹂.
set /p name=ィ渦 檜葷: 

md %name%

cd C:\Windows\System32

goto :ADVANCED




:REN
cls
echo 檜葷擊 夥羚 だ橾檜 襄營ж朝 ィ渦 唳煎蒂 殮溘ж撮蹂.
set /p path=唳煎: 

cd %path%

echo.
echo ========== だ橾 跡煙 ==========
echo.
dir

echo.
echo 夥羚 だ橾曖 檜葷婁 �挫敻皒� 殮溘ж撮蹂.
set /p name=夥羚 だ橾: 

echo.
echo 億煎遴 檜葷婁 �挫敻皒� 殮溘ж撮蹂.
set /p new_name=億煎遴 檜葷婁 �挫敻�: 

ren %name% %new_name%

cd C:\Windows\System32

goto :ADVANCED


pause>nul
