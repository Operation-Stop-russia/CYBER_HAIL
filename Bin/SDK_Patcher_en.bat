@Echo off
mode con:cols=117 lines=23
title CYBER HAIL. GCloudSDK Patcher
Echo.
:m2
Echo.
Echo                                          Patcher for GoogleCloudSDK
Echo.
Echo.
Echo       enter "1"  to perform patch to start sessions with installation and running mhddos_proxy (Bash)
Echo.
Echo       enter "2"  to perform patch to start sessions with installation and running mhddos_proxy (Docker)
Echo.
Echo       enter "3"  to perform patch to start sessions with installation and running db1000n (Bash)
Echo.
Echo       enter "4"  to perform patch to start sessions with installation and running db1000n (Docker)
Echo.
Echo       enter "5"  to perform patch to start sessions with installation and running mhddos_proxy(only proxies)(Bash)
Echo.
Echo       enter "6"  to perform the patch to start sessions with installation and running  UA-Cyber-SHIELD (Docker)
Echo.
Echo.
Echo       enter "0" - to restore original Google Cloud SDK files (cancel patch)
Echo.
Echo.
Echo.
Set /p choice=" Your choice: "
if not defined choice goto m2
if "%choice%"=="1" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\1\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running mhddos_proxy installed && echo -	Patch 1	>>start_log.txt && pause && exit
if "%choice%"=="2" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\2\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running mhddos_proxy installed && echo -	Patch 2	>>start_log.txt && pause && exit
if "%choice%"=="3" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\3\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running db1000n installed && echo -	Patch 3	>>start_log.txt && pause && exit
if "%choice%"=="4" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\4\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running db1000n installed && echo -	Patch 4	>>start_log.txt && pause && exit
if "%choice%"=="5" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\5\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running mhddos_proxy installed && echo -	Patch 5	>>start_log.txt && pause && exit
if "%choice%"=="6" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\6\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running UA-Cyber-SHIELD installed  && echo -	Patch 6	>>start_log.txt && pause && exit
if "%choice%"=="0" Copy /Y Bin\0\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Del /q C:\Windows\Temp\Command(Operation-Stop_russia).txt && echo Original Google Cloud SDK files restored && echo -	Patch 0	>>start_log.txt && goto m2
Echo.
Echo  ! Incorrect input
goto m2

