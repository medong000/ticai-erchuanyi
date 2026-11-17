@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 检查关键文件...
for %%F in (index.html app.js styles.css sw.js manifest.webmanifest README_CN.md) do (
  if exist "%%F" (echo [OK] %%F) else (echo [缺少] %%F)
)
if exist "assets\icon-192.png" (echo [OK] 图标文件) else (echo [缺少] 图标文件)
echo.
echo 检查完成。请阅读 README_CN.md。
pause
