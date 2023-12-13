
# Original model
# bash scripts/run.sh --device 0 --model deit_tiny  --w_bits 4
bash scripts/run.sh --device 0 --model deit_small --w_bits 4 # server3
bash scripts/run.sh --device 2 --model deit_base  --w_bits 4 # server3
# bash scripts/run.sh --device 0 --model swin_tiny  --w_bits 4
bash scripts/run.sh --device 3 --model swin_small --w_bits 4 # 
bash scripts/run.sh --device 0 --model swin_base  --w_bits 4 # server0

# Sparse model

## deit_base
bash scripts/run.sh --device 2 --model deit_base --w_bits 4 --batch 512 --custom_weights elsa_subnet_weights/ELSA_deit_b_u24_9.2G.pth # server3
bash scripts/run.sh --device 1 --model deit_base --w_bits 4 --batch 512 --custom_weights elsa_subnet_weights/ELSA_deit_b_6G.pth # server3
bash scripts/run.sh --device 0 --model deit_base --w_bits 4 --batch 512 --custom_weights elsa_subnet_weights/ELSA_deit_b_7G.pth # GPU 0

## deit_small
bash scripts/run.sh --device 1 --model deit_small --w_bits 4 --batch 1024 --custom_weights elsa_subnet_weights/ELSA_deit_s_u24_2.5G.pth # GPU 1
bash scripts/run.sh --device 2 --model deit_small --w_bits 4 --batch 1024 --custom_weights elsa_subnet_weights/ELSA_deit_s_2G.pth  # GPU 2

## swin_base
bash scripts/run.sh --device 3 --model swin_base --w_bits 4 --batch 512 --custom_weights elsa_subnet_weights/ELSA_swin_b_u24_8G.pth  # GPU 3
bash scripts/run.sh --device 4 --model swin_base --w_bits 4 --batch 512 --custom_weights elsa_subnet_weights/ELSA_swin_b_5.3G.pth  # GPU 4
bash scripts/run.sh --device 5 --model swin_base --w_bits 4 --batch 512 --custom_weights elsa_subnet_weights/ELSA_swin_b_6G.pth  # GPU 5

## swin_small
bash scripts/run.sh --device 6 --model swin_small --w_bits 4 --batch 1024 --custom_weights elsa_subnet_weights/ELSA_swin_s_u24_4.6G.pth  # GPU 6
bash scripts/run.sh --device 7 --model swin_small --w_bits 4 --batch 1024 --custom_weights elsa_subnet_weights/ELSA_swin_s_3.5G.pth  # GPU 7
bash scripts/run.sh --device 1 --model swin_small --w_bits 4 --batch 1024 --custom_weights elsa_subnet_weights/ELSA_swin_s_4G.pth