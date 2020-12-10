#!/bin/bash

emcc -O3 -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' \
    -I libwebp \
    -o webp.js \
    webp.c \
    libwebp/src/{dec,dsp,demux,enc,mux,utils}/*.c
