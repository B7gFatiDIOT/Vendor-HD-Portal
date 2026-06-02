@echo off
:: ============================================================
::   Update Vendor HD Portal
::   Commits local changes to index.html (etc.) and pushes them
::   to GitHub. The live site refreshes within ~1 minute:
::      https://b7gfatidiot.github.io/Vendor-HD-Portal/
:: ============================================================
cd /d "%~dp0"

echo.
echo   Publishing Vendor HD Portal...
echo.

git add -A
git commit -m "Update portal %date% %time%"
if errorlevel 1 echo   (nothing new to publish)

git push origin main
if errorlevel 1 (
  echo.
  echo   [!] Push failed. Check your internet / GitHub sign-in.
) else (
  echo.
  echo   Done. Live in ~1 min at:
  echo      https://b7gfatidiot.github.io/Vendor-HD-Portal/
)

echo.
pause
