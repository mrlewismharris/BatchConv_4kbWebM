@ECHO off
set bitrate=32768

mediainfo --output=General;%%Duration%%\r\n %1 > templength.txt
set /p VV=<templength.txt
del /f templength.txt

set /A b=(%bitrate%/(%VV%/1000+1))-100
if %VV% gtr 20000 (
	ffmpeg -i %1 -vf scale=960:540 -c:v libvpx -b:v %b%K -maxrate %b%K -bufsize 10K -c:a libvorbis -b:a 64K %1.webm
) else (
	ffmpeg -i %1 -c:v libvpx -b:v %b%K -maxrate %b%K -bufsize 10K -c:a libvorbis -b:a 64K %1.webm
)
