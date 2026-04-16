@echo off
cd /d C:\kams-demo\kams

:loop

echo ==========================
echo Descargando desde SFTP...
echo ==========================

"C:\Program Files (x86)\WinSCP\WinSCP.com" /script=winscp.txt

echo ==========================
echo Subiendo a GitHub...
echo ==========================

git add cam1.jpg cam2.jpg
git commit -m "update cameras"
git push

echo Esperando 5 segundos...
timeout /t 5 >nul

goto loop