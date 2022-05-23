if (A_IsAdmin = false) {
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}
Run "Bin\Убиватор всіх процесів(taskkill).bat"
