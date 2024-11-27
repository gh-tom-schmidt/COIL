#!/bin/bash

OUTDIR="./out/"
PSG_TRAIN="./data/psg-train" # /path/to/psg-train

python run_marco.py \
  --output_dir $OUTDIR \
  --model_name_or_path bert-base-uncased \
  --do_train \
  --save_steps 4000 \
  --train_dir $PSG_TRAIN \
  --q_max_len 16 \
  --p_max_len 128 \
  --fp16 \
  --per_device_train_batch_size 8 \
  --train_group_size 8 \
  --cls_dim 768 \
  --token_dim 32 \
  --warmup_ratio 0.1 \
  --learning_rate 5e-6 \
  --num_train_epochs 5 \
  --overwrite_output_dir \
  --dataloader_num_workers 16 \
  --no_sep \
  --pooling max