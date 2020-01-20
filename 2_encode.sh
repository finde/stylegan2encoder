#!/bin/sh

python encode_images.py /data/aligned_images/ /data/generated_images/ /data/latent_representations/ \
    --vgg_url=https://rolux.org/media/stylegan/vgg16_zhang_perceptual.pkl \
    --lr=0.25 \
    --iterations=1000 \
    --use_l1_penalty=0.5 \
    --mask_dir=/data/masks \
    --batch_size=1 \
