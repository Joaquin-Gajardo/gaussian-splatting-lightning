# Gaussian Splatting PyTorch Lightning Implementation
## 1. Installation
### 1.1. Clone repository

```bash
# clone repository
git clone --recursive git@github.com:soeber/gaussian-splatting-lightning.git
cd gaussian-splatting-lightning
```
Move the Dockerfile one dir up, and run build
```bash
docker build -t webview .
```

* You might need to run these commands in the docker, for pip be sure you are in /workspace/webview/submodules:

  ```bash
   git submodule sync --recursive
   git submodule update --init --recursive --force
   pip install --no-cache-dir ./diff-gaussian-rasterization
    pip install --no-cache-dir ./simple-knn
  ```

## 2. Web Viewer


### 4.1 3DGS usage
```bash
python viewer.py PLY_FILE_Path
# e.g.: 
#   python viewer.py ./output/time0/point_cloud/iteration_30000/point_cloud.ply ./output/time1/point_cloud/iteration_30000/point_cloud.ply ./output/time2/point_cloud/iteration_30000/point_cloud.ply ./output/time3/point_cloud/iteration_30000/point_cloud.ply ./output/time4/point_cloud/iteration_30000/point_cloud.ply ./output/time5/point_cloud/iteration_30000/point_cloud.ply
```

### 4.2 4dgs usage
* <a href="https://github.com/hustvl/4DGaussians">hustvl/4DGaussians</a>

```bash
python viewer.py \
    4DGaussians/outputs/lego \
    --vanilla_gs4d
```

## 5. Data
I suggest putting ply and lego directories in an output folder in gaussian-splatting-lightning
