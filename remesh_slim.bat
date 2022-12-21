@echo off
set File_dir=C:\PHD\Code\S3_DeformFDM\DataSet\remesh_operation
echo File_dir %File_dir%

set remesh_script=%File_dir%\remesh_operation.mlx
echo remesh_script %remesh_script%

set input_dir=%File_dir%\layers_unremeshed
echo input_dir %File_dir%

set output_dir=%File_dir%\layers_remeshed
echo output_dir %File_dir%

del /s /Q %output_dir%
pause

set FileName_dir= %File_dir%\fileName.txt
set targe=''
setlocal enabledelayedexpansion
for /f   %%i in (%FileName_dir%)  do (
set target=%%i
echo The input file is: %input_dir%\!target!
meshlabserver -i %input_dir%\!target! -o %output_dir%\!target! -s %remesh_script%
)
