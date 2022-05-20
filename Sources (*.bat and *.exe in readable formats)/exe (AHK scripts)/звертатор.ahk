#Persistent
SetTimer, PuTTY, 1000  ; Check every 1 of a second
return

PuTTY:
    ; Putty Window definition
    IfWinExist, PuTTY
    {
        WinActivate PuTTY
        Send {WinL down}
  	  Send {Down}
	  Send {WinL up}
    }	