@echo off
REM Push local repo (D:\Git\ggggg) to GitHub: HYY-hy-blip/gitt
cd /d D:\Git\ggggg || (echo Cannot find D:\Git\ggggg & pause & exit /b 1)
git rev-parse --is-inside-work-tree >nul 2>&1 || (echo Not a git repository & pause & exit /b 1)

git remote get-url origin >nul 2>&1
if errorlevel 1 (
  git remote add origin https://github.com/HYY-hy-blip/gitt.git
)

echo.
echo Pushing to origin/main ...
echo When prompted: username = HYY-hy-blip, password = your GitHub PAT (classic, repo scope)
echo.
git push -u origin main
pause
