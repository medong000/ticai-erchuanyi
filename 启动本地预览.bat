@echo off
chcp 65001 >nul
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://127.0.0.1:8000
  py -m http.server 8000
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "" http://127.0.0.1:8000
    python -m http.server 8000
  ) else (
    echo 未检测到 Python。请先安装 Python 3，并勾选 Add Python to PATH。
    pause
  )
)
