@echo off
echo date is: %date%
timeout /t 1 >nul
echo by: Marco5dev
echo github: https://github.com/Marco5dev
timeout /t 1 >nul
echo Hi...
timeout /t 1 >nul
echo Let's Get Started...
timeout /t 1 >nul

setlocal enabledelayedexpansion

:: Define options for the choose list with corresponding activation codes
set versions[1]=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
set versions[2]=3KHY7-WNT83-DGQKR-F7HPR-844BM
set versions[3]=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
set versions[4]=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
set versions[5]=W269N-WFGWX-YVC9B-4J6C9-T83GX
set versions[6]=MH37W-N47XK-V7XM9-C7227-GCQG9
set versions[7]=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
set versions[8]=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
set versions[9]=NPPR9-FWDCX-D2C8J-H872K-2YT43
set versions[10]=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4

:: Define options for the choose list
set /a count=0
set "options[!count!]=Win 10 Home" && set /a count+=1
set "options[!count!]=Win 10 Home N" && set /a count+=1
set "options[!count!]=Win 10 Home Single Language" && set /a count+=1
set "options[!count!]=Win 10 Home Country Specific" && set /a count+=1
set "options[!count!]=Win 10 Professional" && set /a count+=1
set "options[!count!]=Win 10 Professional N" && set /a count+=1
set "options[!count!]=Win 10 Education" && set /a count+=1
set "options[!count!]=Win 10 Education N" && set /a count+=1
set "options[!count!]=Win 10 Enterprise" && set /a count+=1
set "options[!count!]=Win 10 Enterprise N" && set /a count+=1
set "options[!count!]=..Back" && set /a count+=1
set "options[!count!]=Quit"

:: Define options for Windows 11
set /a count=0
set "options11[!count!]=Win 11 Home" && set /a count+=1
set "options11[!count!]=Win 11 Home N" && set /a count+=1
set "options11[!count!]=Win 11 Home Single Language" && set /a count+=1
set "options11[!count!]=Win 11 Home Country Specific" && set /a count+=1
set "options11[!count!]=Win 11 Professional" && set /a count+=1
set "options11[!count!]=Win 11 Professional N" && set /a count+=1
set "options11[!count!]=Win 11 Education" && set /a count+=1
set "options11[!count!]=Win 11 Education N" && set /a count+=1
set "options11[!count!]=Win 11 Enterprise" && set /a count+=1
set "options11[!count!]=Win 11 Enterprise N" && set /a count+=1
set "options11[!count!]=..Back" && set /a count+=1
set "options11[!count!]=..Quit"

:menu
echo Select a windows version:
set /a count=1
for %%i in (%options%) do (
    echo !count!. %%i
    set /a count+=1
)
set /p "choice=Enter your choice: "

:: Handle each option from 1 to 12 separately
if %choice% equ 1 (
    call :windows10
) else if %choice% equ 2 (
    call :windows11
) else if %choice% equ 3 (
    echo Quitting...
    timeout /t 3 >nul
    exit /b
) else (
    echo Invalid option. Please try again.
    goto menu
)

:windows10
echo Select a Windows 10 version:
set /a count=1
for %%i in (%options%) do (
    echo !count!. %%i
    set /a count+=1
)
set /p "choice=Enter your choice: "

:: Handle each option from 1 to 12 separately
if %choice% geq 1 if %choice% leq 10 (
    set /a index=%choice%-1
    set "version=!options[%index%]!"
    set "activation_code=!versions[%choice%]!"

    set /p "confirm=You selected !version!. Confirm? (y/n): "
    if /i "!confirm!"=="y" (
        echo We are making everything ready for you...
        timeout /t 1 >nul
        slmgr /ipk !activation_code!
        timeout /t 5 >nul
        echo Don't turn your PC off...
        timeout /t 1 >nul
        slmgr /skms kms8.msguides.com
        timeout /t 5 >nul
        echo We are finally there...
        timeout /t 1 >nul
        slmgr /ato
        timeout /t 2 >nul
        echo Activation completed for !version!
        timeout /t 1 >nul
        echo If there are any problems, please restart your PC and run the script again.
        timeout /t 1 >nul
        echo github: https://github.com/Marco5dev
        echo By Marco5dev 😎
        exit /b
    ) else (
        echo Activation canceled.
        goto menu
    )
) else if %choice% equ 11 (
    goto menu
) else if %choice% equ 12 (
    echo Quitting...
    timeout /t 3 >nul
    exit /b
) else (
    echo Invalid option. Please try again.
    goto windows10
)
exit /b

:windows11
echo Select a Windows 11 version:
set /a count=1
for %%i in (%options11%) do (
    echo !count!. %%i
    set /a count+=1
)
set /p "choice=Enter your choice: "

:: Handle each option from 1 to 12 separately
if %choice% geq 1 if %choice% leq 10 (
    set /a index=%choice%-1
    set "version=!options11[%index%]!"
    set "activation_code=!versions[%choice%]!"

    set /p "confirm=You selected !version!. Confirm? (y/n): "
    if /i "!confirm!"=="y" (
        echo We are making everything ready for you...
        timeout /t 1 >nul
        slmgr /ipk !activation_code!
        timeout /t 5 >nul
        echo Don't turn your PC off...
        timeout /t 1 >nul
        slmgr /skms kms8.msguides.com
        timeout /t 5 >nul
        echo We are finally there...
        timeout /t 1 >nul
        slmgr /ato
        timeout /t 2 >nul
        echo Activation completed for !version!
        timeout /t 1 >nul
        echo If there are any problems, please restart your PC and run the script again.
        timeout /t 1 >nul
        echo github: https://github.com/Marco5dev
        echo By Marco5dev 😎
        exit /b
    ) else (
        echo Activation canceled.
        goto menu
    )
) else if %choice% equ 11 (
    goto menu
) else if %choice% equ 12 (
    echo Quitting...
    timeout /t 3 >nul
    exit /b
) else (
    echo Invalid option. Please try again.
    goto windows11
)
exit /b
