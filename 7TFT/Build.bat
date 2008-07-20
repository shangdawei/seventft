@echo off
ECHO ------------------------------
ECHO Creating 7TFT Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Creating XPR Files...
CALL media\XBMCTex.bat

ECHO ------------------------------
ECHO Copying XPR Files...
xcopy *.xpr "BUILD\7TFT\media\" /Q /I /Y

ECHO ------------------------------
ECHO Cleaning Up...
del *.xpr
 
ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "1080i" "BUILD\7TFT\1080i" /E /Q /I /Y
xcopy "720p" "BUILD\7TFT\720p" /E /Q /I /Y
xcopy "NTSC" "BUILD\7TFT\NTSC" /E /Q /I /Y
xcopy "NTSC16x9" "BUILD\7TFT\NTSC16x9" /E /Q /I /Y
xcopy "PAL" "BUILD\7TFT\PAL" /E /Q /I /Y
xcopy "PAL16x9" "BUILD\7TFT\PAL16x9" /E /Q /I /Y
xcopy "fonts" "BUILD\7TFT\fonts" /E /Q /I /Y
xcopy "sounds" "BUILD\7TFT\sounds" /E /Q /I /Y
xcopy "extras" "BUILD\7TFT\extras" /E /Q /I /Y
xcopy "language" "BUILD\7TFT\language" /E /Q /I /Y
xcopy "colors" "BUILD\7TFT\colors" /E /Q /I /Y
xcopy "*.xml" "BUILD\7TFT\" /Q /I /Y
xcopy "*.txt" "BUILD\7TFT\" /Q /I /Y
xcopy "*.doc" "BUILD\7TFT\" /Q /I /Y
xcopy "BG" "BUILD\7TFT\media\" /E /Q /I /Y

ECHO ------------------------------
ECHO Removing SVN directories from build
FOR /R BUILD %%d IN (SVN) DO @RD /S /Q "%%d" 2>NUL

ECHO Build Complete - Scroll Up to check for errors.
ECHO Final build is located in the BUILD directory.
ECHO ftp the 7TFT folder in the build dir to your xbox and enjoy this SKIN.
ECHO Best Greetz     .:DjToll:.
pause