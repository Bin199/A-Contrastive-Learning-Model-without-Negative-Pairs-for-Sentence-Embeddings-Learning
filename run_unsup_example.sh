python train.py \
    --do_train \
    --load_best_model_at_end \
    --fp16 \
    --overwrite_output_dir \ 
    --description SCD \
    --eval_steps 250 \
    --evaluation_strategy steps \ 
    --hidden_dropout_prob 0.065 \
    --hidden_dropout_prob_noise 0.24 \ 
    --learning_rate 3e-05 \
    --max_seq_length 32 \
    --metric_for_best_model sickr_spearman \ 
    --model_name_or_path roberta-base \
    --num_train_epochs 1 \
    --output_dir result \
    --per_device_train_batch_size 192 \ 
    --report_to wandb \
    --save_total_limit 0 \ 
    --task_alpha 1.0 \
    --task_beta 0.0033 \
    --task_lambda 0.028 \
    --temp 0.05 \
    --train_file data/wiki1m_for_simcse.txt \
    "$@"