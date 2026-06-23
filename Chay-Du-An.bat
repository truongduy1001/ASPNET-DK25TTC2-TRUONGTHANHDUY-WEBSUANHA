@echo off
title HOME SERVICE - Dang khoi dong...
color 0A

cd /d "%~dp0src\TruongThanhDuy\WebsiteSuaChuaNha"

echo =====================================
echo  WEBSITE SUA CHUA NHA - Khoi dong
echo =====================================
echo.

dotnet run --urls "http://localhost:5000"
