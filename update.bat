@echo off
:loop

echo Descargando imagenes desde SFTP...

winscp.com /command ^
"open sftp://stu130782241:Rqhpc4V7cZuW@510402631.ssh.w1.strato.hosting" ^
"get webcam_1/current.jpg cam1.jpg" ^
"get webcam_2/current.jpg cam2.jpg" ^
"exit"

echo Actualizando GitHub...

git add .
git commit -m "update cam"
git push

timeout /t 5 >nul
goto loop