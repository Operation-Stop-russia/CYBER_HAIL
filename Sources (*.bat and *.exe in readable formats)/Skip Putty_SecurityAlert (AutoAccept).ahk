#Persistent
SetTimer, PuTTYSecurityAlert_Accept, 100  ; Check every 1/10 of a second
return

PuTTYSecurityAlert_Accept:
    ; Putty popup definition
    IfWinExist, PuTTY Security Alert
    {
        WinActivate PuTTY Security Alert
        Send {Tab}
  	  Send {Enter}
    }