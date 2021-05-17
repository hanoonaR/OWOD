echo "running script from: $PWD"

nvidia-smi

python tools/train_net.py --num-gpus 1 --dist-url='tcp://127.0.0.1:52133' --config-file configs/OWOD/t1/t1_val.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.01 OWOD.TEMPERATURE 1.5 OUTPUT_DIR "output/t1_final"