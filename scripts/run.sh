#!/bin/bash

# Default values
device=0            # CUDA device
seed=0              # random seed
model="deit_tiny"   # default model flavor
mode="e2e"          # default mode from main.py
w_bits=4            # default weight bits
custom_weights=""   # custom weights (empty by default)

# Function to show usage
usage() {
    echo "Usage: $0 [--device <device>] [--seed <seed>] [--model <model>] [--mode <mode>] [--w_bits <w_bits>] [--custom_weights <path>]"
    exit 1
}

# Parse command line arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --device) device="$2"; shift ;;
        --seed) seed="$2"; shift ;;
        --model) model="$2"; shift ;;
        --mode) mode="$2"; shift ;;
        --w_bits) w_bits="$2"; shift ;;
        --custom_weights) custom_weights="--custom-weights $2"; shift ;;
        *) echo "Unknown parameter passed: $1"; usage ;;
    esac
    shift
done

w="uint${w_bits}"
a="uint8"

# Output folder for checkpoint saving & script outputs
output_folder="output/${model}_${w_bits}W8A_s${seed}"
out_file="${output_folder}/logs.txt"
mkdir -p $output_folder

date
CUDA_VISIBLE_DEVICES=$device python3 main.py \
    $model /dataset/imagenet --ptf \
    --mode ${mode} \
    --seed ${seed} \
    --w_bit_type ${w} \
    --a_bit_type ${a} \
    --quant-method omse \
    --bias-corr \
    $custom_weights \
    --save_folder $output_folder \
    2>&1 | tee -a $out_file # append to output folder
date
