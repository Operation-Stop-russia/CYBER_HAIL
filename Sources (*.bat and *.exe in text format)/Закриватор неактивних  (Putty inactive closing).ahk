#Persistent
SetTimer, PuTTY_EXIT, 3000  ; Check every 3 second
return

PuTTY_EXIT:
    ; Putty popup definition
    IfWinExist, PuTTY Fatal Error
    {
        WinActivate PuTTY Fatal Error
        Send {Enter}
        WinActivate, PuTTY (inactive)
        Send !{F4}
    }
