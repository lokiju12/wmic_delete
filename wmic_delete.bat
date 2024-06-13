@echo off

REM 삭제할 프로그램 목록을 배열로 정의하고
REM 반복문을 통해 모두 삭제하는 BAT스크립트
setlocal enabledelayedexpansion

set count=0

REM 프로그램 이름을 각각의 줄에 정의합니다.
set "programs[0]=2007 Office system용 호환 기능 팩"
set "programs[1]=Microsoft Office Excel Viewer"
set "programs[2]=Microsoft PowerPoint Viewer"
set "programs[3]=Microsoft Office Word Viewer 2003"

REM 배열의 길이를 설정합니다. [0부터 시작한 수]
set count=3

REM 프로그램을 반복적으로 삭제합니다.
for /L %%i in (0,1,%count%) do (
    set "program=!programs[%%i]!"
	
	echo.
    echo 삭제대상 : !program!
	echo.
	
	wmic product where "name='!program!'" call uninstall /nointeractive
	
	echo.
	cls
)
echo.
echo 모든 프로그램이 삭제되었습니다.
echo.
pause


