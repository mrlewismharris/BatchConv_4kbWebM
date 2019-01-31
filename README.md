# BatchConv_4kbWebM

Convert any ffmpeg input file to a <4kb webm file

This BAT file requires placement in any location in a Windows file system

Videos above 20 seconds are also resized the 960x540 so you're not looking at a blurry mess

  USAGE:
    - Simply drag and drop the video file onto the batch file
    - Tt will produce a .webm video output in the same location as the batch file

Please make sure the input file is in the same location as the batch file!

## Required software:
* [MediaInfoCLI](https://mediaarea.net/en/MediaInfo/Download/Windows) - To get video length
* [FFMPEG](https://ffmpeg.zeranoe.com/builds/) - To convert video
    - Make sure they are both accessible through CMD/CLI!

### Change the bitrate with
```
set bitrate=[insert bitrate here]
```
