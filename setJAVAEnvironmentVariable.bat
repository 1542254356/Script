@echo off
set workdir=%~dp0
set workdir=%workdir:~0,-1%
echo ��ǰ����Ŀ¼��%workdir%

echo Java������������
setx JAVA_HOME "%workdir%" /M
setx CLASSPATH ".;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar" /M

set add_path=%%JAVA_HOME%%\bin
setx Path "%Path%%add_path%" /M

pause