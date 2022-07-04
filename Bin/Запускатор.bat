@echo off
chcp 866
mode con:cols=120 lines=35
title CYBER HAIL
Echo.
Echo.
Echo												To switch language, enter "EN"
:m1
Echo.
Echo 			"ŠI… €„"		 (Operation "Stop russia")
Echo.
Echo 	“˘ Ł ! „«ď ăáŻič­®Ł® ŕ®§Ł®ŕâ ­­ď ¬ ó ˇăâ¨ ˘áâ ­®˘«Ą­¨© i Żŕ®Ż âçĄ­¨© GoogleCloudSDK
Echo 		â  ˘¨Ş®­ ­  Żŕ®ćĄ¤ăŕ  i­ići «i§ ćiő/ ˘â®ŕ¨§ ćiő  Ş ă­âi˘ (gcloud init) !!!
Echo.
Echo 	’ŕ¨˘ «iáâě áĄ ­áă GoogleShell - ¤® 12 Ł®¤¨­. ’¨¦­Ą˘  Ş˘®â  ­  ˘¨Ş®ŕ¨áâ ­­ď GShell  Ş ă­â®¬ - 60 Ł®¤¨­.
Echo 	„«ď § ˇĄ§ŻĄçĄ­­ď ŕĄ¦¨¬ă 24/7 Ż®âŕiˇ­® ¬ â¨ 3 Ş®¬Ż«ĄŞâ¨  Ş ă­âi˘ ­  1 ŹŠ i ˘¨Ş®ŕ¨áâ®˘ă˘ â¨ őĺ Ż®çĄŕ§i.
Echo.
Echo 	„«ď ­ « čâă˘ ­­ď CloudSDK:
Echo 	˘˘Ą¤iâě "0"   é®ˇ § ˘ ­â ¦¨â¨ â  ˘áâ ­®˘¨â¨ GoogleCloudSDK
Echo 	˘˘Ą¤iâě "00"  é®ˇ § Żăáâ¨â¨ gcloud_init.bat (¤«ď ¤®¤ ˘ ­­ď  Ş ă­âi˘!) „«ď ŻĄŕĄŁ«ď¤ă áŻ¨áŞă ˘˘Ą¤iâě"01"
Echo 	˘˘Ą¤iâě "000" é®ˇ ˘¨Ş®­ â¨ Ż âç GoogleCloudSDK (!)
Echo.
Echo 	„«ď ŕ®§Ł®ŕâ ­­ď â  § ŻăáŞă  â Ş¨:
Echo.
Echo 	˘˘Ą¤iâě "1" ¤«ď § ŻăáŞă 25 áĄ ­ái˘ ( Ş ă­â¨ 1-25)
Echo 	˘˘Ą¤iâě "2" ¤«ď § ŻăáŞă 50 áĄ ­ái˘ ( Ş ă­â¨ 1-50)
Echo 	˘˘Ą¤iâě "3" ¤«ď § ŻăáŞă 100 áĄ ­ái˘ ( Ş ă­â¨ 1-100)
Echo 	˘˘Ą¤iâě "4" ¤«ď § ŻăáŞă 200 áĄ ­ái˘ ( Ş ă­â¨ 1-200)
Echo.
Echo 	˘i¤Ż®˘i¤­®:
Echo 	"11"  - 25 áĄ ­ái˘ ( Ş ă­â¨ 26-50 (¤ŕăŁ¨© Ş®¬Ż«ĄŞâ))
Echo 	"111" - 25 áĄ ­ái˘ ( Ş ă­â¨ 51-75 (âŕĄâi© Ş®¬Ż«ĄŞâ))
Echo 	"22"  - 50 áĄ ­ái˘ ( Ş ă­â¨ 51-100 (¤ŕăŁ¨© Ş®¬Ż«ĄŞâ))
Echo 	"222" - 50 áĄ ­ái˘ ( Ş ă­â¨ 101-150 (âŕĄâi© Ş®¬Ż«ĄŞâ))
Echo 	"33"  - 100 áĄ ­ái˘ ( Ş ă­â¨ 101-200 (¤ŕăŁ¨© Ş®¬Ż«ĄŞâ))
Echo 	"333" - 100 áĄ ­ái˘ ( Ş ă­â¨ 201-301 (âŕĄâi© Ş®¬Ż«ĄŞâ))
Echo 	"44"  - 200 áĄ ­ái˘ ( Ş ă­â¨ 201-400 (¤ŕăŁ¨© Ş®¬Ż«ĄŞâ))
Echo 	"444" - 200 áĄ ­ái˘ ( Ş ă­â¨ 401-600 (âŕĄâi© Ş®¬Ż«ĄŞâ))
Echo.
Echo 	™®ˇ ˘i¤Ş«¨Ş â¨ â®ŞĄ­¨ â  áŞ áă˘ â¨  ˘â®ŕ¨§ ćiő ˘áiĺ  Ş ă­âi˘ ˘˘Ą¤iâě "3210" (ˇĄ§ Ż®âŕĄˇ¨ Ť… § áâ®á®˘ă˘ â¨)
Echo.
Set /p choice=" ‚ č ˘¨ˇiŕ: "
if not defined choice goto m1
if "%choice%"=="0" (powershell -executionpolicy bypass -file Bin\InstallSDK.ps1) && echo. && echo ‡ ŻăéĄ­® i­áâ «ďâ®ŕ Google Cloud SDK. && echo ‚áâ ­®˘iâě SDK § Ż ŕ ¬Ąâŕ ¬¨ §  § ¬®˘çă˘ ­­ď¬. (‚iŞ­® Ş®­á®«i, é® §'ď˘¨âěáď Żŕ¨ § ˘ĄŕčĄ­­i ¬®¦­  Żŕ®áâ® § Şŕ¨â¨) && echo ‡ Żăáâiâě ¤®¤ â®Ş Ż®˘â®ŕ­® Żiá«ď § ˘ĄŕčĄ­­ď i­áâ «ďćiő SDK && timeout 20 && exit
if "%choice%"=="00" (Start "" "Bin\gcloud_init.bat") && echo ĄŞ®¬Ą­¤ăóâěáď ®¤ŕ §ă ¤®¤ â¨ ˘ái âŕ¨ Ş®¬Ż«ĄŞâ¨  Ş ă­âi˘ && goto m1
if "%choice%"=="01" (Start cmd.exe /k "(echo 1 && set/p "=list" <nul) | gcloud init --skip-diagnostics && echo No need && echo. && echo ‚¨˘Ą¤Ą­® áŻ¨á®Ş  ˘â®ŕ¨§®˘ ­¨ĺ  Ş ă­âi˘. ™®ˇ § Şŕ¨â¨ ­ â¨á­iâě ˇă¤ě-ďŞă Ş­®ŻŞă && pause && exit") && echo ĄŞ®¬Ą­¤ăóâěáď ®¤ŕ §ă ¤®¤ â¨ ˘ái âŕ¨ Ş®¬Ż«ĄŞâ¨  Ş ă­âi˘ && goto m1
if "%choice%"=="000" (Start "" "Bin\SDK_Patcher.bat") && echo Ź âçĄŕ § ŻăéĄ­® && goto m1
if "%choice%"=="1" (Start "Starter" "Bin\starters\Start25.bat") && exit
if "%choice%"=="11" (Start "Starter" "Bin\starters\Start25_2.bat") && exit
if "%choice%"=="111" (Start "Starter" "Bin\starters\Start25_3.bat") && exit
if "%choice%"=="2" (Start "Starter" "Bin\starters\Start50.bat") && exit
if "%choice%"=="22" (Start "Starter" "Bin\starters\Start50_2.bat") && exit
if "%choice%"=="222" (Start "Starter" "Bin\starters\Start50_3.bat") && exit
if "%choice%"=="3" (Start "Starter" "Bin\starters\Start100.bat") && exit
if "%choice%"=="33" (Start "Starter" "Bin\starters\Start100_2.bat") && exit
if "%choice%"=="333" (Start "Starter" "Bin\starters\Start100_3.bat") && exit
if "%choice%"=="4" (Start "Starter" "Bin\starters\Start200.bat") && exit
if "%choice%"=="44" (Start "Starter" "Bin\starters\Start200_2.bat") && exit
if "%choice%"=="444" (Start "Starter" "Bin\starters\Start200_3.bat") && exit
if "%choice%"=="3210" echo I­ići©®˘ ­® Żŕ®ćĄá ˘i¤Ş«¨Ş ­­ď â®ŞĄ­i˘ â  ˘¨¤ «Ą­­ď i­ä®ŕ¬ ćiő Żŕ®  ˘â®ŕ¨§®˘ ­i  Ş ă­â¨. „«ď ˘i¤¬i­¨ § Şŕ¨©âĄ âĄŕ¬i­ «. ™®ˇ Żŕ®¤®˘¦¨â¨ ­ â¨á­iâě ˇă¤ě-ďŞă Ş­®ŻŞă && pause && gcloud auth revoke --all && pause && Start "" "Bin\‡ ŻăáŞ â®ŕ.bat" 
if /i "%choice%"=="en" (Start "" "Bin\Launcher.bat") && exit
if /i "%choice%"=="ua" (Start "" "Bin\‡ ŻăáŞ â®ŕ.bat") && exit

Echo.
Echo.
Echo  ! ŤĄŞ®ŕĄŞâ­Ą ˘˘Ą¤Ą­­ď
goto m1




