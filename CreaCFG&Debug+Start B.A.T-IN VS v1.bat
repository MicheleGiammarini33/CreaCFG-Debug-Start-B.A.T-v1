@echo off
setlocal
set /p "_myvar=Nome del DB?"
set /p "_myvar1=Nome del ARPROC?"
set /p "_myvar4=Nome AZIENDA?"
set /p "_myvar8=Versione ex 17sr4?"
set /p "_myvar10="Admin . %_myvar4% Bus%_myvar%"
cd "C:\BIZ20%_myvar8%\BUSCUBE

(
echo ^<?xml version="1.0" encoding="utf-8"?^>
echo ^<Project ToolsVersion="Current" xmlns="http://schemas.microsoft.com/developer/msbuild/2003"^>
echo ^<PropertyGroup Condition="'$(Configuration)|$(Platform)' == 'Debug|AnyCPU'"^>
echo ^<StartArguments^>Admin . %_myvar4% Bus%_myvar%^</StartArguments^>
echo ^</PropertyGroup^>^<PropertyGroup^>
echo ^<ProjectView^>ProjectFiles^</ProjectView^>
echo ^</PropertyGroup^>^</Project^>
)>BUSCUBE.vbproj.user


cd "C:\BIZ20%_myvar8%\TEST"
echo Server=%_myvar%;Database=%_myvar1%;UID=sa;pwd=nts;LANGUAGE=us_english;APP=Business;Connect Timeout=30;>Bus%_myvar%.cfg

cd "C:\BIZ20%_myvar8%\TEST"
start BUSADMINTOOLS.EXE

endlocal
exit