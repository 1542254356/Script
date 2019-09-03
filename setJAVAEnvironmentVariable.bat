@echo off
set workdir=%~dp0
set workdir=%workdir:~0,-1%
echo 当前工作目录：%workdir%

echo Java环境变量设置
setx JAVA_HOME "%workdir%" /M
setx CLASSPATH ".;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar" /M

set add_path=%%JAVA_HOME%%\bin
setx Path "%Path%%add_path%" /M

pause