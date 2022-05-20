#Persistent
SetTimer, PuTTY_EXIT, 100  ; Check every 1/10 of a second
return

PuTTY_EXIT:
    ; Putty popup definition
    IfWinExist, PuTTY Exit Confirmation
    {
        WinActivate PuTTY Exit Confirmation
        Send {Enter}
    }