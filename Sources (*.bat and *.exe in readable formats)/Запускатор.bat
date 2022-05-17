@echo off
chcp 866
mode con:cols=120 lines=30
Echo.
Echo.
Echo.
:m1
Echo.
Echo 			"ŠI… €„"		 (Operation "Stop russia")
Echo.
Echo 	“˘ Ł ! „«ď ăáŻič­®Ł® ŕ®§Ł®ŕâ ­­ď ¬ ó ˇăâ¨ ˘áâ ­®˘«Ą­¨© i Żŕ®Ż âçĄ­¨© GoogleCloudSDK
Echo 		â  ˘¨Ş®­ ­  Żŕ®ćĄ¤ăŕ  i­ići «i§ ćiő  Ş ă­âi˘ (gcloud_init) !!!
Echo.
Echo 	’ŕ¨˘ «iáâě áĄ ­áă GoogleShell - 12 Ł®¤¨­. ’¨¦­Ą˘  Ş˘®â  ­  ˘¨Ş®ŕ¨áâ ­­ď GShell  Ş ă­â®¬ - 60 Ł®¤¨­.
Echo 	„«ď § ˇĄ§ŻĄçĄ­­ď ŕĄ¦¨¬ă 24/7 Ż®âŕiˇ­® ¬ â¨ 3 Ş®¬Ż«ĄŞâ¨  Ş ă­âi˘ ­  1 ŹŠ i ˘¨Ş®ŕ¨áâ®˘ă˘ â¨ őĺ Ż®çĄŕ§i.
Echo.
Echo 	„«ď ­ « čâă˘ ­­ď CloudSDK:
Echo 	˘˘Ą¤iâě "0"   é®ˇ § ˘ ­â ¦¨â¨ â  ˘áâ ­®˘¨â¨ GoogleCloudSDK
Echo 	˘˘Ą¤iâě "00"  é®ˇ § Żăáâ¨â¨ gcloud_init.bat (¤«ď ¤®¤ ˘ ­­ď  Ş ă­âi˘!)
Echo 	˘˘Ą¤iâě "000" é®ˇ ˘¨Ş®­ â¨ Patch GoogleSDK (!)
Echo.
Echo 	„«ď ŕ®§Ł®ŕâ ­­ď â  § ŻăáŞă  â Ş¨:
Echo.
Echo 	˘˘Ą¤iâě "1" ¤«ď § ŻăáŞă 50 áĄ ­ái˘ ( Ş ă­â¨ 1-50)
Echo 	˘˘Ą¤iâě "2" ¤«ď § ŻăáŞă 100 áĄ ­ái˘ ( Ş ă­â¨ 1-100)
Echo 	˘˘Ą¤iâě "3" ¤«ď § ŻăáŞă 200 áĄ ­ái˘ ( Ş ă­â¨ 1-200)
Echo.
Echo 	˘i¤Ż®˘i¤­®:
Echo 	"11"  - 50 áĄ ­ái˘ ( Ş ă­â¨ 51-100 (¤ŕăŁ¨© Ş®¬Ż«ĄŞâ))
Echo 	"111" - 50 áĄ ­ái˘ ( Ş ă­â¨ 101-150 (âŕĄâi© Ş®¬Ż«ĄŞâ))
Echo 	"22"  - 100 áĄ ­ái˘ ( Ş ă­â¨ 101-200 (¤ŕăŁ¨© Ş®¬Ż«ĄŞâ))
Echo 	"222" - 100 áĄ ­ái˘ ( Ş ă­â¨ 201-301 (âŕĄâi© Ş®¬Ż«ĄŞâ))
Echo 	"33"  - 200 áĄ ­ái˘ ( Ş ă­â¨ 201-400 (¤ŕăŁ¨© Ş®¬Ż«ĄŞâ))
Echo 	"333" - 200 áĄ ­ái˘ ( Ş ă­â¨ 401-600 (âŕĄâi© Ş®¬Ż«ĄŞâ))
Echo.
Set /p choice=" ‚ č ˘¨ˇiŕ: "
if not defined choice goto m1
if "%choice%"=="0" (powershell -executionpolicy bypass -file Bin\InstallSDK.ps1) && echo Google Cloud SDK install running && goto m1
if "%choice%"=="00" (Start "" "Bin\gcloud_init.bat") && echo ĄŞ®¬Ą­¤ăóâěáď ®¤ŕ §ă ¤®¤ â¨ ˘ái âŕ¨ Ş®¬Ż«ĄŞâ¨  Ş ă­âi˘ && goto m1
if "%choice%"=="000" (Start "" "Bin\SDK_Patcher.exe") && echo Ź âçĄŕ § ŻăéĄ­® && goto m1
if "%choice%"=="1" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start50.bat") && exit
if "%choice%"=="11" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start50_2.bat") && exit
if "%choice%"=="111" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start50_3.bat") && exit
if "%choice%"=="2" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start100.bat") && exit
if "%choice%"=="22" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start100_2.bat") && exit
if "%choice%"=="222" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start100_3.bat") && exit
if "%choice%"=="3" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start200.bat") && exit
if "%choice%"=="33" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start200_2.bat") && exit
if "%choice%"=="333" (Start "‡ ŻăáŞ â®ŕ" "Bin\Start100_3.bat") && exit
Echo.
Echo.
Echo  ! ŤĄ Ş®ŕĄŞâ­Ą ˘˘Ą¤Ą­­ď
goto m1
