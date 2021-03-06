## DL params
export EXTRA_PARAMS=""
export EXTRA_CONFIG='SOLVER.BASE_LR 0.24 SOLVER.MAX_ITER 40000 SOLVER.WARMUP_FACTOR 0.000133 SOLVER.WARMUP_ITERS 1800 SOLVER.WARMUP_METHOD mlperf_linear SOLVER.STEPS (5625,7500) SOLVER.IMS_PER_BATCH 256 TEST.IMS_PER_BATCH 256 MODEL.RPN.FPN_POST_NMS_TOP_N_TRAIN 1000 NHWC True DATALOADER.NUM_WORKERS 1'

## System run parms
export DGXNNODES=16
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
export WALLTIME=02:00:00

## System config params
export DGXNGPU=16
export DGXSOCKETCORES=24
export DGXNSOCKET=2
export DGXHT=2 	# HT is on is 2, HT off is 1
