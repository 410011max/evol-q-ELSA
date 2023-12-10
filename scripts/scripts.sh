
# original model
# bash scripts/run.sh --device 0 --model deit_tiny  --w_bits 4 --batch 512
bash scripts/run.sh --device 0 --model deit_small --w_bits 4 --batch 512
bash scripts/run.sh --device 2 --model deit_base  --w_bits 4 --batch 128
# bash scripts/run.sh --device 0 --model swin_tiny  --w_bits 4 --batch 256
bash scripts/run.sh --device 3 --model swin_small --w_bits 4 --batch 256
bash scripts/run.sh --device 0 --model swin_base  --w_bits 4 --batch 128

bash scripts/run.sh --device 0 --model deit_small --w_bits 4 --custom_weights elsa_subnet_weights/deit_small_4W8A.pth