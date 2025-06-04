gpu=${1:-0} # default to first gpu, i.e. 0
port=${2:-6020}

# Loading all 10 first timesteps should barely fit on a A5000 (24GB of RAM)
# 20240424 is pretty good
export CUDA_VISIBLE_DEVICES=$gpu; python viewer.py -p $port \
    ../../output/demoanlage_2025/field_C/20250424/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250424/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250428/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250502/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250506/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250508/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250512/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250515/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250519/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250523/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250526/point_cloud/iteration_30000/point_cloud.ply \
    ../../output/demoanlage_2025/field_C/20250530/point_cloud/iteration_30000/point_cloud.ply \

    # ../../output/demoanlage_2025/field_C/20250321/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250325/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250328/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250331/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250403/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250407/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250411/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250414/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250417/point_cloud/iteration_30000/point_cloud.ply \
    # ../../output/demoanlage_2025/field_C/20250422/point_cloud/iteration_30000/point_cloud.ply \