
# Original model
bash scripts/run.sh --device 1 --model deit_small --mode fq_vit --w_bits 8
bash scripts/run.sh --device 2 --model deit_base  --mode fq_vit --w_bits 8
bash scripts/run.sh --device 2 --model swin_small --mode fq_vit --w_bits 8
bash scripts/run.sh --device 3 --model swin_base  --mode fq_vit --w_bits 8

# Sparse model

## deit_small
bash scripts/run.sh --device 0 --model deit_small --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_deit_s_u24_2.5G.pth
bash scripts/run.sh --device 0 --model deit_small --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_deit_s_2G.pth

## deit_base
bash scripts/run.sh --device 1 --model deit_base --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_deit_b_u24_9.2G.pth
bash scripts/run.sh --device 1 --model deit_base --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_deit_b_6G.pth
bash scripts/run.sh --device 1 --model deit_base --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_deit_b_7G.pth

## swin_small
bash scripts/run.sh --device 1 --model swin_small --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_swin_s_u24_4.6G.pth
bash scripts/run.sh --device 1 --model swin_small --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_swin_s_3.5G.pth
bash scripts/run.sh --device 2 --model swin_small --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_swin_s_4G.pth

## swin_base
bash scripts/run.sh --device 3 --model swin_base --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_swin_b_u24_8G.pth
bash scripts/run.sh --device 0 --model swin_base --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_swin_b_5.3G.pth
bash scripts/run.sh --device 1 --model swin_base --mode fq_vit --w_bits 8 --custom_weights elsa_subnet_weights/ELSA_swin_b_6G.pth
