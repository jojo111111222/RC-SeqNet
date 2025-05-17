#训练
python -m model_training.start_training --config_file "configs/training/attacked-0.1-lsb-3_resnet18_sgd_lr0.005_pretrained-True.yaml"
#矫正
python -m experiments.preprocessing.run_preprocessing --config_file "configs/attacked-0.1-lsb-3_resnet18_sgd_lr0.005_pretrained-True.yaml"

python -m experiments.preprocessing.localize_artifacts --config_file "configs/attacked-0.1-lsb-3_resnet18_sgd_lr0.005_pretrained-True.yaml" \
                                                       --layer_name "features.28" \
                                                       --cav_type "lsb" \
                                                       --artifact  "artifact"


python -m experiments.evaluation.measure_quality_cav_attacked --config_file "configs/attacked-0.1-lsb-3_resnet18_sgd_lr0.005_pretrained-True.yaml"

python -m model_training.start_model_correction--config_file "configs/attacked-0.1-lsb-3_resnet18_sgd_lr0.005_pretrained-True.yaml"

python -m experiments.evaluation.evaluate_by_subset_attacked --config_file "configs/attacked-0.1-lsb-3_resnet18_sgd_lr0.005_pretrained-True.yaml"

