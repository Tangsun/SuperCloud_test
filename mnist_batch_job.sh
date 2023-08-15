#!/bin/bash
#SBATCH --job-name pytorch
#SBATCH -o %j.log
#SBATCH --gres=gpu:volta:1

# Load modules
module load anaconda/2023a
module load cuda/11.6
module load nccl/2.11.4-cuda11.6

python mnist_main.py