@echo off

title 黑客帝国数码雨（中配版）

color 02

setlocal ENABLEDELAYEDEXPANSION

for /l %%i in (1,1,80) do (

set Down%%i=0

)

:heike

for /l %%j in (1,1,80) do (

set /a guxing%%j-=1

if !guxing%%j! LSS 0 (

set /a hanye%%j=!random!%%4

set /a guxing%%j=!random!%%15+10

)

if "!hanye%%j!" == "1" (

set /a shu=!random!%%2

set /p=!shu!<NUL

) else (

set /p= <NUL

)

)

goto heike
