@echo off
:main
cls
echo Hello, I am The First Project by @devstellar7b. You can chose to have a Fact, Hack, advice, guide or about you today!
echo.
echo Type one of the following options and press [Enter]:
echo   about me
echo   advice
echo   guide
echo   Hack
echo   Fact
echo.
set /p userinput=Your choice: 

REM convert input to lowercase to handle case-insensitivity
setlocal enabledelayedexpansion
set "input=!userinput!"
for %%A in ("about me" "advice" "guide" "hack" "fact") do (
    if /I "!input!"=="%%~A" set "input=%%~A"
)

if /I "%input%"=="about me" (
    echo You're The best, Trust me
    goto end
) else if /I "%input%"=="advice" (
    echo Slow Growth is the Best Growth
    goto end
) else if /I "%input%"=="guide" (
    echo Learn Something new and Instant Rewarding yourself, Feedbacks, compliments etc release the 4 pillars of pleasure In your brain (dopamine, serotonin, endorphins, and oxytocin)
    goto end
) else if /I "%input%"=="hack" (
    echo Understanding a problem completely solves 50%% of it
    goto end
) else if /I "%input%"=="fact" (
    echo Blackhole is the ultimate form of Power of this universe that humanity knows
    goto end
) else (
    echo I understand you, But I am limited by something nobody knows
    goto end
)

:end
echo.
pause
exit /b
