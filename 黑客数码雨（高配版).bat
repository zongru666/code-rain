@echo off&mode con cols=42 lines=20&color 02

setlocal enabledelayedexpansion

set code=123456789abcdef

set m=1&set v=1

title 黑客帝国数码雨（高配版）

:begin

set /a a=%random%%%2,b=%random%%%3

if %b% neq 0 (set b=%a%) else (set "b= ")

set str=%str%%b%

set /a n+=1

if %n% lss 40 goto begin

set /a m+=1,x+=1

if %m% geq 20 set /a v+=1

set str%m%=%str%

cls&for /l %%i in (%m%,-1,%v%) do echo.!str%%i!

if %x% equ 20 call :lp

set str=&set n=0

goto begin

:lp

set /a a=%random%%%15,x=0

set a=!code:~%a%,1!

color 0%a%
