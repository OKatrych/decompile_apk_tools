@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  jadx-gui startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and JADX_GUI_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Xms128M" "-Xmx4g" "-Dawt.useSystemAAFontSettings=lcd" "-Dswing.aatext=true" "-XX:+UseG1GC"

@rem Find javaw.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=javaw.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/javaw.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\jadx-gui-0.9.0-b898-a1bfdc63.jar;%APP_HOME%\lib\jfontchooser-1.0.5.jar;%APP_HOME%\lib\jadx-cli-0.9.0-b898-a1bfdc63.jar;%APP_HOME%\lib\jadx-core-0.9.0-b898-a1bfdc63.jar;%APP_HOME%\lib\dx-1.16.jar;%APP_HOME%\lib\android-5.1.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\slf4j-api-1.7.26.jar;%APP_HOME%\lib\rsyntaxtextarea-3.0.2.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\image-viewer-1.2.3.jar;%APP_HOME%\lib\commons-text-1.6.jar;%APP_HOME%\lib\commons-lang3-3.8.1.jar;%APP_HOME%\lib\rxjava2-swing-0.3.4.jar;%APP_HOME%\lib\rxjava-2.2.7.jar;%APP_HOME%\lib\apksig-3.3.2.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\asm-7.1.jar;%APP_HOME%\lib\annotations-17.0.0.jar;%APP_HOME%\lib\cloning-1.9.12.jar;%APP_HOME%\lib\jcommander-1.74.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\objenesis-3.0.1.jar;%APP_HOME%\lib\logback-core-1.2.3.jar

@rem Execute jadx-gui
start "jadx-gui" /B "%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %JADX_GUI_OPTS%  -classpath "%CLASSPATH%" jadx.gui.JadxGUI %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable JADX_GUI_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%JADX_GUI_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
