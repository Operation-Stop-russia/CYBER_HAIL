@Echo off
title Starter
echo -	1	-	Start25 	-	%date% - %time% >>start_log.txt
Start "" "Bin\Skip Putty_SecurityAlert (AutoAccept).exe"
Start "" "Bin\Згортатор (minimizer).exe"
Start "" "Bin\Закриватор неактивних (Putty inactive closing).exe"

FOR /L %%G IN (1,1,25) DO (
(echo 1 && echo %%G && echo n) | gcloud init --skip-diagnostics
Start /min cmd.exe /c gcloud cloud-shell ssh --authorize-session
)
TIMEOUT 20
taskkill /F /IM python.exe

taskkill /F /IM "Згортатор (minimizer).exe"
taskkill /F /IM "Skip Putty_SecurityAlert (AutoAccept).exe"

Start "" "Bin\CtrlAltTab.exe"

taskkill /F /IM cmd.exe