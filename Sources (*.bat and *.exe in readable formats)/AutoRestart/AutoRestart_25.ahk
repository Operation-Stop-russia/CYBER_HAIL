#Persistent
if (A_IsAdmin = false) {
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

Loop {
	Run "Bin\starters\Start25.bat"
	sleep % 1000*60*60*6
	Run "Stop (Close all sessions).exe"
	sleep 10000
	Run "Bin\starters\Start25_2.bat"
	sleep % 1000*60*60*6
	Run "Stop (Close all sessions).exe"
	sleep 10000
	Run "Bin\starters\Start25_3.bat"
	sleep % 1000*60*60*6
	Run "Stop (Close all sessions).exe"
	sleep 10000
}