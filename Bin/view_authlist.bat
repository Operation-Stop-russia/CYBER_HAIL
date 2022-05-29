@Echo off

(echo 1 && <null set/p "num=list") | gcloud init --skip-diagnostics
echo No need
echo.
echo Виведено список авторизованих акаунтiв. Щоб закрити натиснiть будь-яку кнопку...
pause
exit