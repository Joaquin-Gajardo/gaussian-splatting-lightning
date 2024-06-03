gpu=${1:-0} # default to first gpu, i.e. 0
port=${2:-6020}

# Loading all 10 first timesteps should barely fit on a A5000 (24GB of RAM)
export CUDA_VISIBLE_DEVICES=$gpu; python viewer.py -p $port \
    ../../output/demoanlage/field_C/20240308/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240315/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240322/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240328/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240405/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240416/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240425/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240508/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage/field_C/20240528/point_cloud/iteration_7000/point_cloud.ply
    
    #../../output/demoanlage/field_C/20240411/point_cloud/iteration_30000/point_cloud.ply \
    #../../output/demoanlage/field_C/20240513/point_cloud/iteration_30000/point_cloud.ply \ 