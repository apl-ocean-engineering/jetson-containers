#---
# name: sam
# group: vit
# depends: [pytorch, torchvision, onnxruntime, opencv, jupyterlab]
# buildkit_device: nvidia.com/gpu=all
# requires: '>=34.1.0'
# docs: docs.md
#---
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

WORKDIR /opt

RUN uv pip install --extra-index-url https://pypi.org/simple matplotlib pycocotools tqdm

# Clone the repository:
RUN git clone https://github.com/facebookresearch/segment-anything && \
    cd segment-anything && \
    sed 's|, "onnx.*"||' -i setup.py && \
    uv pip install --extra-index-url https://pypi.org/simple .

ENV PYTHONPATH=${PYTHONPATH}:/opt/segment-anything


RUN mkdir -p /opt/segment-anything/benchmark
COPY benchmark.py /opt/segment-anything/benchmark

WORKDIR /opt/segment-anything/
