@echo off
echo Downloading stb_image.h...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/nothings/stb/master/stb_image.h' -OutFile 'stb_image.h'"
if exist stb_image.h (
    echo [SUCCESS] stb_image.h downloaded successfully!
) else (
    echo [ERROR] Download failed. Please download manually from:
    echo https://raw.githubusercontent.com/nothings/stb/master/stb_image.h
)
pause