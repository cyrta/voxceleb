The speaking face tracks are given in the following format, assuming that the video is saved in 360p resolution at 25fps.
Frame {frame_number} [X Y W H]

Use the following instructions to prepare the video:

1. Install youtube-dl and ffmpeg

2. Download the video using the following script:
youtube-dl -f ''bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'' "YOUTUBE_ID" --output "SAVE_DIRECTORY/%%(id)s.%%(ext)s"

3. Convert the video
ffmpeg -threads 1 -y -i SAVE_DIRECTORY/INPUT_FILE_NAME -async 1 -qscale:v 5 -r 25 -deinterlace -vf scale=-1:360 OUTPUT_FILE_NAME

