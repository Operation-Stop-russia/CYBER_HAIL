if (A_IsAdmin = false) {
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

Loop 200 {
    Process, Close , putty.exe
    IfWinExist, PuTTY Exit Confirmation
    {
	  WinActivate PuTTY Exit Confirmation
        Send {Enter}
    }
    
    IfWinExist, PuTTY Fatal Error
    {
        WinActivate PuTTY Fatal Error
        Send {Enter}
    }
}

Run "Bin\Убиватор всіх процесів(taskkill).bat"