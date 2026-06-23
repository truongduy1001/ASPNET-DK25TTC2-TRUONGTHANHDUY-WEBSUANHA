@echo off
title HOME SERVICE - Dang cai dat...
color 0A

cd /d "%~dp0src\TruongThanhDuy\WebsiteSuaChuaNha"

echo =====================================
echo  WEBSITE SUA CHUA NHA - Cai dat
echo =====================================
echo.

echo [1/3] Dang tai thu vien...
dotnet restore
if errorlevel 1 goto :error

echo.
echo [2/3] Dang tao database...
dotnet ef database update
if errorlevel 1 (
    echo.
    echo [!] Neu loi database, hay chay file SQL trong thu muc:
    echo     database\home_service.sql
    echo     bang SQL Server Management Studio (SSMS).
    echo.
    echo [2/3] Bo qua loi, tiep tuc khoi dong...
)

echo.
echo [3/3] Khoi dong website...
echo.
echo =====================================
echo  Truy cap: http://localhost:5000
echo  Tai khoan: admin@suachuanha.vn / Admin@123
echo =====================================
echo.

dotnet run --urls "http://localhost:5000"
goto :end

:error
echo.
echo [!] Da xay ra loi! Vui long kiem tra:
echo     - Da cai .NET 9 SDK chua?
echo     - Server SQL co chay khong?
pause
exit /b 1

:end
pause
