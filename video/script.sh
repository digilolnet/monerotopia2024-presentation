ffmpeg -i output.webm -t 00:00:08 -c copy part1.webm &
ffmpeg -i output.webm -ss 00:00:12 -c copy part2.webm &
echo "file 'part1.webm'" > filelist;
echo "file 'part2.webm'" >> filelist;
wait;

ffmpeg -f concat -i filelist -c copy output2.webm;
rm filelist;
