@echo off
chcp 866
Echo.
Echo.
Echo.
:m1
Echo.
Echo 			"КIБЕР ГРАД"		 (Operation "Stop russia")
Echo.
Echo 	Увага! Для успiшного розгортання має бути встановлений i пропатчений GoogleCloudSDK
Echo 		та виконана процедура iнiцiалiзацiї акаунтiв (gcloud_init) !!!
Echo.
Echo 	Тривалiсть сеансу GoogleShell - 12 годин. Тижнева квота на використання GShell акаунтом - 60 годин.
Echo 	Для забезпечення режиму 24/7 потрiбно мати 3 комплекти акаунтiв на 1 ПК i використовувати їх почерзi.
Echo.
Echo 	Для налаштування CloudSDK:
Echo 	введiть "0"   щоб завантажити та встановити GoogleCloudSDK
Echo 	введiть "00"  щоб запустити gcloud_init.bat (для додавання всiх акаунтiв!)
Echo 	введiть "000" щоб виконати Patch GoogleSDK (!!!)
Echo.
Echo 	Для розгортання та запуску атаки:
Echo.
Echo 	введiть "1" для запуску 50 сеансiв (акаунти 1-50)
Echo 	введiть "2" для запуску 100 сеансiв (акаунти 1-100)
Echo 	введiть "3" для запуску 200 сеансiв (акаунти 1-200)
Echo.
Echo 	вiдповiдно:
Echo 	"11"  - 50 сеансiв (акаунти 51-100 (другий комплект))
Echo 	"111" - 50 сеансiв (акаунти 101-150 (третiй комплект))
Echo 	"22"  - 100 сеансiв (акаунти 101-200 (другий комплект))
Echo 	"222" - 100 сеансiв (акаунти 201-301 (третiй комплект))
Echo 	"33"  - 200 сеансiв (акаунти 201-400 (другий комплект))
Echo 	"333" - 200 сеансiв (акаунти 401-600 (третiй комплект))
Echo.
Set /p choice=" Ваш вибiр: "
if not defined choice goto m1
if "%choice%"=="0" (powershell -executionpolicy bypass -file InstallSDK.ps1) && goto m1
if "%choice%"=="00" (Start "" "Bin\gcloud_init.bat") && echo Рекомендується одразу додати всi три комплекти акаунтiв && goto m1
if "%choice%"=="000" (Start "" "Bin\SDK_Patch.bat") && echo Patch виконано && goto m1
if "%choice%"=="1" (Start "Запускатор" "Bin\Start50.bat") && exit
if "%choice%"=="11" (Start "Запускатор" "Bin\Start50_2.bat") && exit
if "%choice%"=="111" (Start "Запускатор" "Bin\Start50_3.bat") && exit
if "%choice%"=="2" (Start "Запускатор" "Bin\Start100.bat") && exit
if "%choice%"=="22" (Start "Запускатор" "Bin\Start100_2.bat") && exit
if "%choice%"=="222" (Start "Запускатор" "Bin\Start100_3.bat") && exit
if "%choice%"=="3" (Start "Запускатор" "Bin\Start200.bat") && exit
if "%choice%"=="33" (Start "Запускатор" "Bin\Start200_2.bat") && exit
if "%choice%"=="333" (Start "Запускатор" "Bin\Start100_3.bat") && exit
Echo.
Echo.
Echo  ! Не коректне введення
goto m1




