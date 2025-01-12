@echo off

:: Activate the virtual environment using a relative path
call venv\Scripts\activate

:: Run TypeScript Compiler in a new window
start cmd /c "npx tsc"

:: Run Webpack in production mode in a new window
start cmd /c "npx webpack --mode production"

:: Start the Flask server and filter logs to show only Flask output
start cmd /k "python scripts\server.py"

pause