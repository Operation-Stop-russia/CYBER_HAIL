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
Echo 	enter "1"  to perform the patch to start sessions with installation and running mhddos_proxy
Echo.
Echo 	enter "2"  to perform the patch to start sessions with installation and running db1000n
Echo.
Echo 	      "3"  fo tests only (Test!)
Echo.
Echo.
Echo 	enter "0" - to restore original Google Cloud SDK files (cancel patch)
Echo.
Echo.
Echo.
Set /p choice=" Your choice: "
if not defined choice goto m2
if "%choice%"=="1" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\1\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running mhddos_proxy installed && echo -	Patch 1	>>start_log.txt && pause && exit
if "%choice%"=="2" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\2\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for running db1000n installed && echo -	Patch 2	>>start_log.txt && pause && exit
if "%choice%"=="3" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\3\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Test! Patch GCloudSDK for tests installed && echo -	Patch 3	>>start_log.txt && pause && exit
if "%choice%"=="0" Copy /Y Bin\0\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Del /q C:\Windows\Temp\Command(Operation-Stop_russia).txt && echo Original Google Cloud SDK files restored && echo -	Patch 0	>>start_log.txt && goto m2
Echo.
Echo  ! Incorrect input
goto m2

