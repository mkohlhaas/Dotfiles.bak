#! /bin/bash

create_chapterfile(){
    echo "### Create Chapterfile ###"

    if [ "$#" -lt 1 ]; then
        echo "Usage: create_chapterfile input.mp4 [input.mp4...]"
        return
    fi

    local chapter_start=0
    local chapter_end=0
    for ((i=1; i<=$#; i++)); do
        file="${!i}"
        local chapter_name=$(basename "$file" .mp4)
        local chapter_number=$(printf "CHAPTER%s" "$i")
        local duration=$(duration "$file")

        printf "%s=%s\n" "$chapter_number" $(date -d@"$chapter_start" -u +%T.%3N) | tee -a /tmp/create_chapterfile.log
        printf "%sNAME=%s\n" "$chapter_number" "$chapter_name" | tee -a /tmp/create_chapterfile.log

        chapter_end=$(bc <<< "scale=6;$chapter_end+ $duration")
        chapter_start=$(bc <<< "scale=6;$chapter_end+ 0.001")
    done
}

create_filelist(){
    for file in "$@"; do
        printf "file %q\n" "$(grealpath "$file")" | tee -a /tmp/create_filelist.log
    done
}

duration(){
        ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$1"
}

create_chapterfile "$@"
