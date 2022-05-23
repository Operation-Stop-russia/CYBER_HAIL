if (A_IsAdmin = false) {
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}
Run "Bin/Запускатор.bat"
