@echo off
chcp 866
mode con:cols=120 lines=35
title CYBER HAIL
Echo.
Echo.
Echo												To switch language, enter "EN"
:m1
Echo.
Echo 			"КIБЕР ГРАД"		 (Operation "Stop russia")
Echo.
Echo 	Увага! Для успiшного розгортання має бути встановлений i пропатчений GoogleCloudSDK
Echo 		та виконана процедура iнiцiалiзацiї/авторизацiї акаунтiв (gcloud init) !!!
Echo.
Echo 	Тривалiсть сеансу GoogleShell - до 12 годин. Тижнева квота на використання GShell акаунтом - 60 годин.
Echo 	Для забезпечення режиму 24/7 потрiбно мати 3 комплекти акаунтiв на 1 ПК i використовувати їх почерзi.
Echo.
Echo 	Для налаштування CloudSDK:
Echo 	введiть "0"   щоб завантажити та встановити GoogleCloudSDK
Echo 	введiть "00"  щоб запустити gcloud_init.bat (для додавання акаунтiв!) Для перегляду списку введiть"01"
Echo 	введiть "000" щоб виконати патч GoogleCloudSDK (!)
Echo.
Echo 	Для розгортання та запуску атаки:
Echo.
Echo 	введiть "1" для запуску 25 сеансiв (акаунти 1-25)
Echo 	введiть "2" для запуску 50 сеансiв (акаунти 1-50)
Echo 	введiть "3" для запуску 100 сеансiв (акаунти 1-100)
Echo 	введiть "4" для запуску 200 сеансiв (акаунти 1-200)
Echo.
Echo 	вiдповiдно:
Echo 	"11"  - 25 сеансiв (акаунти 26-50 (другий комплект))
Echo 	"111" - 25 сеансiв (акаунти 51-75 (третiй комплект))
Echo 	"22"  - 50 сеансiв (акаунти 51-100 (другий комплект))
Echo 	"222" - 50 сеансiв (акаунти 101-150 (третiй комплект))
Echo 	"33"  - 100 сеансiв (акаунти 101-200 (другий комплект))
Echo 	"333" - 100 сеансiв (акаунти 201-301 (третiй комплект))
Echo 	"44"  - 200 сеансiв (акаунти 201-400 (другий комплект))
Echo 	"444" - 200 сеансiв (акаунти 401-600 (третiй комплект))
Echo.
Echo 	Щоб вiдкликати токени та скасувати авторизацiї всiх акаунтiв введiть "3210" (без потреби НЕ застосовувати)
Echo.
Set /p choice=" Ваш вибiр: "
if not defined choice goto m1
if "%choice%"=="0" (powershell -executionpolicy bypass -file Bin\InstallSDK.ps1) && echo. && echo Запущено iнсталятор Google Cloud SDK. && echo Встановiть SDK з параметрами за замовчуванням. (Вiкно консолi, що з'явиться при завершеннi можна просто закрити) && echo Запустiть додаток повторно пiсля завершення iнсталяцiї SDK && timeout 20 && exit
if "%choice%"=="00" (Start "" "Bin\gcloud_init.bat") && echo Рекомендується одразу додати всi три комплекти акаунтiв && goto m1
if "%choice%"=="01" (Start cmd.exe /k "(echo 1 && <null set/p "num=list") | gcloud init --skip-diagnostics && echo No need && echo. && echo Виведено список авторизованих акаунтiв. Щоб закрити натиснiть будь-яку кнопку && pause && exit") && echo Рекомендується одразу додати всi три комплекти акаунтiв && goto m1
if "%choice%"=="000" (Start "" "Bin\SDK_Patcher.bat") && echo Патчер запущено && goto m1
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
if "%choice%"=="3210" echo Iнiцiйовано процес вiдкликання токенiв та видалення iнформацiї про авторизованi акаунти. Для вiдмiни закрийте термiнал. Щоб продовжити натиснiть будь-яку кнопку && pause && gcloud auth revoke --all && pause && Start "" "Bin\Запускатор.bat" 
if /i "%choice%"=="en" (Start "" "Bin\Launcher.bat") && exit
if /i "%choice%"=="ua" (Start "" "Bin\Запускатор.bat") && exit

Echo.
Echo.
Echo  ! Некоректне введення
goto m1




