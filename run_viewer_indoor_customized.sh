gpu=${1:-1} # default to second gpu, i.e. 1
port=${2:-6018}

export CUDA_VISIBLE_DEVICES=$gpu; python viewer.py -p $port \
    ../../datasets/Customized/output/time0/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/Customized/output/time1/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/Customized/output/time2/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/Customized/output/time3/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/Customized/output/time4/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/Customized/output/time5/point_cloud/iteration_30000/point_cloud.ply