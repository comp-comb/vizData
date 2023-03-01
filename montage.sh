#!/bin/bash

dates=($(grep 'date =' weekly.py | cut -d [ -f2 | cut -d ] -f 1 | tr ',' ' '))
months=($(grep 'month =' weekly.py | cut -d [ -f2 | cut -d ] -f 1 | tr ',' ' '))
years=($(grep 'years =' weekly.py | cut -d [ -f2 | cut -d ] -f 1 | tr ',' ' '))

labels() {

    d=${years[$1]}-${months[$1]}-${dates[$1]}

    echo $(date -d $d '+%-A (%-d %b)')  # for ubuntu
    #echo $(date -jf %F $d '+%-A (%-d %b)') #for mac
}

cd ./vizualization/final/

echo "montaging..."

montage Sun*Number*png \
    Wed*Number*png -font DejaVu-Serif Fri*Number*png -pointsize 120 \
    -label "$(labels 0)" Sun*Con*png \
    -label "$(labels 1)" Wed*Con*png \
    -label "$(labels 2)" Fri*Con*png -tile x2 -geometry 1600x1313 montage.png

echo "done"

