# Experimental environment: 2 * A100

CUDA_VISIBLE_DEVICES=0,1 \
swift infer \
    --ckpt_dir "output/qwen-72b-chat/vx-xxx/checkpoint-xxx" \
    --load_dataset_config true \
    --max_length 2048 \
    --use_flash_attn true \
    --max_new_tokens 2048 \
    --temperature 0.3 \
    --top_p 0.7 \
    --repetition_penalty 1. \
    --do_sample true \
    --merge_lora false \
