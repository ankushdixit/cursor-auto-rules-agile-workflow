@echo off
setlocal EnableDelayedExpansion
chcp 65001 >nul

REM Check if the target directory is provided
if "%~1"=="" (
    echo Error: Please provide the target project directory
    echo Usage: %~nx0 ^<target-project-directory^>
    exit /b 1
)
set "TARGET_DIR=%~1"

REM Create the target directory if it doesn't exist
if not exist "%TARGET_DIR%\" (
    echo Creating new project directory: %TARGET_DIR%
    mkdir "%TARGET_DIR%"
    (
        echo # Cursor Rules Project
        echo.
        echo This project has been configured with Cursor rules for enhanced AI assistance.
    ) > "%TARGET_DIR%\README.md"
)

REM Create required directories
if not exist "%TARGET_DIR%\.cursor\rules\" (
    mkdir "%TARGET_DIR%\.cursor\rules"
)
if not exist "%TARGET_DIR%\.ai\docs\" (
    mkdir "%TARGET_DIR%\.ai\docs"
)

REM Copy the rule files (without overwriting existing ones)
echo Copying cursor rules files...
for %%F in (.cursor\rules\*.mdc) do (
    if not exist "%TARGET_DIR%\.cursor\rules\%%~nxF" (
        copy "%%F" "%TARGET_DIR%\.cursor\rules\" >nul
    )
)

REM Copy docs directory if it exists
if exist "docs\" (
    echo Copying documentation...
    if not exist "%TARGET_DIR%\docs\" (
        mkdir "%TARGET_DIR%\docs"
    )
    xcopy "docs\*.*" "%TARGET_DIR%\docs\" /E /I /Y >nul
)

REM Update .gitignore for private rules and AI docs
if exist "%TARGET_DIR%\.gitignore" (
    findstr /L /C:".cursor/rules/_*.mdc" "%TARGET_DIR%\.gitignore" >nul
    if errorlevel 1 (
        (
            echo.
            echo # Private individual user cursor rules and AI docs
            echo .cursor/rules/_*.mdc
            echo .ai/docs/_*.md
        ) >> "%TARGET_DIR%\.gitignore"
    )
) else (
    (
        echo # Private individual user cursor rules and AI docs
        echo .cursor/rules/_*.mdc
        echo .ai/docs/_*.md
    ) > "%TARGET_DIR%\.gitignore"
)

echo.
echo Deployment Complete!
echo Core rules: %TARGET_DIR%\.cursor\rules\
echo AI docs: %TARGET_DIR%\.ai\docs\
if exist "docs\" (
    echo Documentation: %TARGET_DIR%\docs\
)
echo Updated .gitignore

endlocal
