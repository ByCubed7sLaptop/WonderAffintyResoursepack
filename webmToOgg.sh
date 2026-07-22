for f in *.webm; do
    out="${f%.webm}.ogg"
    #[ -f "$out" ] ||
    ffmpeg -i "$f" -vn -ac 1 -c:a libvorbis -q:a 5  "$out"
done
