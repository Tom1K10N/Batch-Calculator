@echo off
chcp 65001 > nul

setlocal enableDelayedExpansion

:menu
cls
echo Choose a mode:
echo 1. Free Mode
echo 2. Easy Mode
echo 3. Medium Mode
echo 4. High Mode
echo 5. Insane Mode
echo 6. Exit

set /p "choice=Enter the mode number: "

if "%choice%"=="1" (
    call :freeMode
) else if "%choice%"=="2" (
    call :easyMode
) else if "%choice%"=="3" (
    call :mediumMode
) else if "%choice%"=="4" (
    call :highMode
) else if "%choice%"=="5" (
    call :insaneMode
) else if "%choice%"=="6" (
    exit
) else (
    echo Invalid mode choice!
    timeout /t 2 /nobreak >nul
    goto :menu
)

:freeMode
:calculation
set /p "expression=Enter a mathematical expression (or 'exit' to exit the mode): "

if "%expression%"=="exit" (
    goto :menu
)

set /a result=%expression%
echo Result: %result%

goto calculation

:easyMode
:easyCalculation
set /a "num1=%random% %% 10"
set /a "num2=%random% %% 10"
set /a result=num1+num2
echo What is %num1% + %num2%?
set /p "answer="

if "%answer%"=="exit" (
    goto :menu
)

if "%answer%"=="%result%" (
    echo Correct!
) else (
    echo Incorrect. The correct answer is: %result%
)

goto easyCalculation

:mediumMode
:mediumCalculation
set /a "num1=%random% %% 100"
set /a "num2=%random% %% 100"
set /a result=num1*num2
echo What is %num1% * %num2%?
set /p "answer="

if "%answer%"=="exit" (
    goto :menu
)

if "%answer%"=="%result%" (
    echo Correct!
) else (
    echo Incorrect. The correct answer is: %result%
)

goto mediumCalculation

:highMode
:highCalculation
set /a "num1=%random% %% 1000"
set /a "num2=%random% %% 1000"
set /a result=num1*num2
echo What is %num1% * %num2%?
set /p "answer="

if "%answer%"=="exit" (
    goto :menu
)

if "%answer%"=="%result%" (
    echo Correct!
) else (
    echo Incorrect. The correct answer is: %result%
)

goto highCalculation

:insaneMode
:insaneCalculation
set /a "num1=%random% %% 10000"
set /a "num2=%random% %% 10000"
set /a "num3=%random% %% 10000"
set /a "num4=%random% %% 10000"
set /a result=(num1*num2)+(num3*num4)
echo What is (%num1% * %num2%) + (%num3% * %num4%)?
set /p "answer="

if "%answer%"=="exit" (
    goto :menu
)

if "%answer%"=="%result%" (
    echo Correct!
) else (
    echo Incorrect. The correct answer is: %result%
)

goto insaneCalculation
