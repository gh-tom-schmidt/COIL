#!/bin/bash

#
# Before starting, please run << $ conda init >> and restart the terminal (open a new one)
#

conda create -n main python=3.8 -y
conda activate main
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
pip install torch-scatter -f https://data.pyg.org/whl/torch-2.0.0+cu118.html
conda install -c conda-forge faiss-gpu
pip install transformers datasets