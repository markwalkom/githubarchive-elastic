#!/bin/sh

mkdir -p data/done
cd data

if [ -z ${1+x} ]; then
    day=`date +%Y-%m-%-d`
else
    day=${1}
fi

if [ ${1} == "bulk" ]; then
    echo "Downloading GitHub archives for 2015 and 2016..."
     # DOWNLOAD 2015-2016 IN BULK ARCHIVES (SKIPPING EXISTING) -- (PRE-2015 HAS DIFFERENT DATA MODEL)
    wget http://data.githubarchive.org/2015-{01,02,03}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
    wget http://data.githubarchive.org/2015-{04,05,06}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
    wget http://data.githubarchive.org/2015-{07,08,09}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
    wget http://data.githubarchive.org/2015-{10,11,12}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
    wget http://data.githubarchive.org/2016-{01,02,03}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
    wget http://data.githubarchive.org/2016-{04,05,06}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
    wget http://data.githubarchive.org/2016-{07,08,09}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
    wget http://data.githubarchive.org/2016-{10,11,12}-{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}-{0..23}.json.gz -nc &
else
    echo "Downloading GitHub archives for ${day}..."
    wget http://data.githubarchive.org/${day}-{0..23}.json.gz  -q -nc
fi

cd ..
