@echo off
for %%a in (.) do set currentfolder=%%~na

7z a -tZip -mx0 %currentfolder%.epub mimetype
7z a -tZip %currentfolder%.epub OEBPS META-INF
