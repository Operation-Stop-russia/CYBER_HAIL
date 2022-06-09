@Echo off
mode con:cols=110 lines=18
title CYBER HAIL. GCloudSDK Patcher
Echo.
:m2
Echo.
Echo.
Echo  		Patcher for GoogleCloudSDK 			 (Operation "Stop russia")
Echo.
Echo.
Echo 	введiть "1"  щоб виконати патч для старту сеансiв з командою встановлення та запуску mhddos_proxy
Echo.
Echo 	введiть "2"  щоб виконати патч для старту сеансiв з командою встановлення та запуску db1000n
Echo.
Echo 	        "3"  для тестiв! (без додаткової вказiвки не встановлювати)
Echo.
Echo.
Echo 	введiть "0" - для вiдновлення оригiнальних файлiв Google Cloud SDK (вiдмiна патчу)
Echo.
Echo.
Echo.
Set /p choice=" Ваш вибiр: "
if not defined choice goto m2
if "%choice%"=="1" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\1\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK для запуску mhddos_proxy встановлено && echo -	Patch 1	>>start_log.txt && pause && exit
if "%choice%"=="2" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\2\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK для запуску db1000n встановлено && echo -	Patch 2	>>start_log.txt && pause && exit
if "%choice%"=="3" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\3\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Test! Patch GCloudSDK для тестуваннь!  && echo -	Patch 3	>>start_log.txt && pause && exit
if "%choice%"=="0" Copy /Y Bin\0\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Del /q C:\Windows\Temp\Command(Operation-Stop_russia).txt && echo Вiдновлено оригiнальнi файли Google Cloud SDK && echo -	Patch 0	>>start_log.txt && goto m2
Echo.
Echo  ! Некоректне введення
goto m2

