FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

ENV DEBIAN_FRONTEND=nointeractive

RUN apt update && \
    apt install -y tzdata git vim libglew-dev libassimp-dev libboost-all-dev libgtk-3-dev \
    libopencv-dev libglfw3-dev libavdevice-dev libavcodec-dev libeigen3-dev libxxf86vm-dev \
    libembree-dev wget unzip && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run
RUN chmod +x cuda_11.7.0_515.43.04_linux.run
RUN ./cuda_11.7.0_515.43.04_linux.run --silent --toolkit

RUN conda create -yn gspl python=3.9 pip && conda init bash && exec bash && conda activate gspl
RUN echo "source activate gspl" >> ~/.bashrc
ENV PATH /opt/conda/envs/gspl/bin:$PATH

RUN pip install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/cu117


WORKDIR /workspace
COPY ./gaussian-splatting-lightning ./webview

WORKDIR /workspace/webview
RUN pip install -r env.txt
