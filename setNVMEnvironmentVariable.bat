@echo off
set workdir=%~dp0
set workdir=%workdir:~0,-1%
echo ��ǰ����Ŀ¼��%workdir%

echo NVM������������
setx NVM_HOME "%workdir%" /M
setx NVM_SYMLINK "D:\software\nodejs" /M

set add_path=%NVM_HOME%;%NVM_SYMLINK%
setx Path "%Path%%add_path%" /M

pause