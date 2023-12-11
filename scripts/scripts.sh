
# Original model
# bash scripts/run.sh --device 0 --model deit_tiny  --w_bits 4
bash scripts/run.sh --device 0 --model deit_small --w_bits 4 # server3
bash scripts/run.sh --device 2 --model deit_base  --w_bits 4 # server3
# bash scripts/run.sh --device 0 --model swin_tiny  --w_bits 4
bash scripts/run.sh --device 3 --model swin_small --w_bits 4 # 
bash scripts/run.sh --device 0 --model swin_base  --w_bits 4 # server0

# Sparse model

## deit_base
bash scripts/run.sh --device 2 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_deit_b_u24_9.2G.pth # server3
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_deit_b_6G.pth # server3
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_deit_b_7G.pth

## deit_small
bash scripts/run.sh --device 2 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_deit_s_u24_2.5G.pth
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_deit_s_2G.pth

## swin_base
bash scripts/run.sh --device 2 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_swin_b_u24_8G.pth
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_swin_b_5.3G.pth
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_swin_b_6G.pth

## swin_small
bash scripts/run.sh --device 2 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_swin_s_u24_4.6G.pth
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_swin_s_3.5G.pth
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 128 --custom_weights elsa_subnet_weights/ELSA_swin_s_4G.pth