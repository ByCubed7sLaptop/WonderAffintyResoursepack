for f in *.mp4; do
    out="${f%.mp4}.ogg"
    [ -f "$out" ] || ffmpeg -i "$f" -c:v libtheora -q:v 7 -c:a libvorbis -q:a 5 "$out"
done
