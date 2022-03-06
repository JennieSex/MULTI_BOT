#!/bin/bash
DBport=56101
LPport=56001

trap 'kill 0' EXIT

./longpoll/lp 55011 &
./longpoll/lp 55022 &
./longpoll/lp 55033 &
./longpoll/lp 55044 &
./longpoll/lp 55055 &
./longpoll/lp 55066 &
./longpoll/lp 55077 &
./longpoll/lp 55088 &
./longpoll/lp 55099 &
./longpoll/lp 55110 &
./longpoll/lp 55101 &

cat | python3.8 RBClub.py -lp1 55011 -lp2 55022 -lp3 55033 -lp4 55044 -lp5 55055 -lp6 55066 -lp7 55077 -lp8 55088 -lp9 55099 -lp10 55110
