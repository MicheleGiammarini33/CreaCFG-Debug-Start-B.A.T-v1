@echo off
set /p "_myvar=Nome del DB?"
set /p "_myvar1=Nome del ARPROC?"
set /p "_myvar4=Nome AZIENDA?"
set /p "_myvar8=Versione ex 17sr4?"
set /p "_myvar10="Admin . %_myvar4% Bus%_myvar%"

echo Server=%_myvar%;Database=%_myvar1%;UID=sa;pwd=nts;LANGUAGE=us_english;APP=Business;Connect Timeout=30;>Bus%_myvar%.cfg

cd "C:\BIZ20%_myvar8%\TEST"
start BUSADMINTOOLS.EXE

endlocal
exit