#!/bin/bash

gpu_id=0
exp_id=1
dataset_path_train='../datasets/ReDReS_train.json'
#dataset_path_train='../datasets/ReDAD_train.json'
dataset_path_dev='../datasets/ReDReS_dev.json'
#dataset_path_dev='../datasets/ReDAD_dev.json'
dataset_path_test='../datasets/ReDReS_test.json'
#dataset_path_test='../datasets/ReDAD_test.json'
model_id=1
#model_id=2
epoch=50
batch_size=16
embed_mode='BiomedBERT_base'
#embed_mode='BiomedBERT_large'
#embed_mode='BioLinkBERT_base'
#embed_mode='BioLinkBERT_large'
#embed_mode='BioGPT_base'
#embed_mode='BioGPT_large'
#exp_setting='binary'
exp_setting='multi_class'
#eval_metric='micro'
eval_metric='macro'
lr=0.00001
dropout=0.3

aggregations=(
    'start_start'
    'end_end'
    'start_end_start_end'
    'ent_context_ent_context'
    'inter'
    'cls_ent_context_ent_context'
    'cls_start_start'
    'cls_end_end'
    'cls_start_end_start_end'
    'cls_inter'
    'start_inter_start'
    'end_inter_end'
    'start_end_inter_start_end'
    'ent_context_inter_ent_context'
    'atlop_context_vector'
    'atlop_context_vector_only'
)

cd ..

for aggregation in "${aggregations[@]}"; do
    echo '##########################################'
    echo 'Aggregation: '${aggregation}
    echo '##########################################'
    output_dir='results_original_split/rett_syndrome/model_'${model_id}'/exp_'${exp_id}'/'${embed_mode}'/'${exp_setting}'/'${eval_metric}'/'${aggregation}'/'
    #output_dir='results_original_split/alzheimer_s_disease/model_'${model_id}'/exp_'${exp_id}'/'${embed_mode}'/'${exp_setting}'/'${eval_metric}'/'${aggregation}'/'
    seed=42
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=3
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=7
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=21
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=77
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=24
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=69
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=96
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=44
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    seed=11
    echo 'Seed: '${seed}
    output_file='seed_'${seed}
    CUDA_VISIBLE_DEVICES=$gpu_id python main.py --dataset_path_train $dataset_path_train --dataset_path_dev $dataset_path_dev --dataset_path_test $dataset_path_test --do_train --do_eval --model_id $model_id --epoch $epoch --batch_size $batch_size --batch_size $batch_size --embed_mode $embed_mode --exp_setting $exp_setting --eval_metric $eval_metric --lr $lr  --dropout $dropout --seed $seed --output_dir $output_dir --output_file $output_file --sentence_wise_splits --aggregation $aggregation
    echo '--------------'
    echo '--------------'
    echo '###################################################################################################################'
done