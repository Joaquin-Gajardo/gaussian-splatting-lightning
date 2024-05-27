gpu=${1:-0} # default to first gpu, i.e. 0
port=${2:-6019}

# Loading around 10 timesteps works fine with my A5000 (24GB of RAM), more than 12 timesteps crashes the viewer
export CUDA_VISIBLE_DEVICES=$gpu; python viewer.py -p $port \
    ../../datasets/calathea/v4/output/20240523_152207/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240523_171645/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240523_183148/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240523_193638/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240523_202111/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240523_211225/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240523_215055/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240524_073054/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240524_081530/point_cloud/iteration_30000/point_cloud.ply \
    ../../datasets/calathea/v4/output/20240524_085525/point_cloud/iteration_30000/point_cloud.ply \
    #../../datasets/calathea/v4/output/20240524_104146/point_cloud/iteration_30000/point_cloud.ply \
    #../../datasets/calathea/v4/output/20240524_122126/point_cloud/iteration_30000/point_cloud.ply \
    # ../../datasets/calathea/v4/output/20240524_131123/point_cloud/iteration_30000/point_cloud.ply \
    # ../../datasets/calathea/v4/output/20240524_141406/point_cloud/iteration_30000/point_cloud.ply 