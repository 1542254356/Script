@echo off
set workdir=%~dp0
set workdir=%workdir:~0,-1%
echo 当前工作目录：%workdir%

echo NVM环境变量设置
setx NVM_HOME "%workdir%" /M
setx NVM_SYMLINK "D:\software\nodejs" /M

set add_path=%NVM_HOME%;%NVM_SYMLINK%
setx Path "%Path%%add_path%" /M

pause