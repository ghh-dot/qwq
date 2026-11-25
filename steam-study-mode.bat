@echo off
setlocal
chcp 65001 >nul
title Steam - 复习模式
color 0A
echo.
echo  复习模式已开启。
echo  检测到 Steam 就会强制关闭（约 1 秒内）。
echo.
echo  请先保存并退出游戏，再继续。
echo  关闭这个窗口即可停止；可以最小化窗口继续复习。
echo.
if /I "%~1"=="/autostart" goto watch
pause
:watch
taskkill /F /IM steam.exe >nul 2>&1
timeout /T 1 /NOBREAK >nul
goto watch
