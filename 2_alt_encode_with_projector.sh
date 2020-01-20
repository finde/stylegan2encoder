#!/bin/sh

python project_images.py \
    --tmp-dir /data/temp_images \
    --vgg16-pkl=https://rolux.org/media/stylegan/vgg16_zhang_perceptual.pkl \
    /data/aligned_images /data/generated_images
