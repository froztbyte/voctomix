#!/bin/sh
ffmpeg -y \
	-i "$HOME/31c3-sendezentrum-1003-de-Freak_Show_FS147_That_Escalatored_Quickly_hd.mp4" \
	-ac 2 \
	-af aresample=48000 \
	-c:v rawvideo \
	-c:a pcm_s16le \
	-f matroska \
	tcp://localhost:10001
