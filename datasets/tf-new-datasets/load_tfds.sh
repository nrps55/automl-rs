#!/bin/bash
#SBATCH --partition= #Name of the GPUs partition
#SBATCH --mem=3G
#SBATCH -o  #Standard output from the program
#SBATCH -e  #Standard error from the program
#SBATCH -J load_tfds #Name of your program
#SBATCH --array 0-2 #create 3 jobs
source activate amluc
CUDA_VISIBLE_DEVICES=0
params=(\
'coffee_scenes.py' \
'savana_scenes.py' \
'brazildam_sentinel.py'\
)
srun tfds build --data_dir='/data' ${params[$SLURM_ARRAY_TASK_ID]}
