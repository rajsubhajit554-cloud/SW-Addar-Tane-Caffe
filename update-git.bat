@echo off
echo ===================================
echo   SW Addar Tane Caffe - Git Update
echo ===================================
echo.

echo [1/3] Staging all files...
git add .

set /p commit_msg="Enter commit message (or press ENTER for default 'Update website content'): "
if "%commit_msg%"=="" set commit_msg=Update website content

echo [2/3] Committing changes...
git commit -m "%commit_msg%"

echo [3/3] Pushing changes to GitHub repository...
git push -u origin main

echo.
echo ===================================
echo   Git Update Completed Successfully!
echo ===================================
pause
