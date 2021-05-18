echo "running script from: $PWD"

nvidia-smi

#Task:1
python tools/train_net.py --num-gpus 1 --dist-url='tcp://127.0.0.1:52133' --config-file configs/OWOD/t1/t1_val.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.01 OWOD.TEMPERATURE 1.5 OUTPUT_DIR "output/t1_final"

python tools/train_net.py --num-gpus 1 --eval-only --config-file configs/OWOD/t1/t1_test.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.005 OUTPUT_DIR "output/t1_final"

# Task 2: Start
python tools/train_net.py --num-gpus 1 --dist-url='tcp://127.0.0.1:52133' --config-file configs/OWOD/t2/t2_val.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.01 OWOD.TEMPERATURE 1.5 OUTPUT_DIR "output/t2_final"

python tools/train_net.py --num-gpus 1 --eval-only --config-file configs/OWOD/t2/t2_test.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.005 OUTPUT_DIR "output/t2_final"
# Task 2: End

# Task 3: Start
python tools/train_net.py --num-gpus 1 --dist-url='tcp://127.0.0.1:52133' --config-file configs/OWOD/t3/t3_val.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.01 OWOD.TEMPERATURE 1.5 OUTPUT_DIR "output/t3_final"

python tools/train_net.py --num-gpus 1 --eval-only --config-file configs/OWOD/t3/t3_test.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.005 OUTPUT_DIR "output/t3_final"
# Task 3: End

# Task 4: Start
python tools/train_net.py --num-gpus 1 --eval-only --config-file configs/OWOD/t4/t4_test.yaml SOLVER.IMS_PER_BATCH 4 SOLVER.BASE_LR 0.005 OUTPUT_DIR "output/t4_final"
# Task 4: End