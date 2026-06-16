#!/usr/bin/env bash
set -ex

# Clone the repository if it doesn't exist
git clone --branch=v${MAMBA_VERSION} --depth=1 --recursive https://github.com/NVIDIA/TensorRT-Model-Optimizer /opt/nvidia_modelopt || \
git clone --depth=1 --recursive https://github.com/NVIDIA/TensorRT-Model-Optimizer /opt/nvidia_modelopt

cd /opt/nvidia_modelopt

uv pip install --extra-index-url https://pypi.org/simple lm-eval
uv pip install --extra-index-url https://pypi.org/simple --upgrade setuptools einops
uv pip install --extra-index-url https://pypi.org/simple triton
export MAX_JOBS=$(nproc)
uv build --wheel --no-build-isolation --out-dir /opt/nvidia_modelopt/wheels . --verbose
uv pip install --extra-index-url https://pypi.org/simple /opt/nvidia_modelopt/wheels/nvidia-modelopt*.whl

cd /opt/mamba

# Optionally upload to a repository using Twine
twine upload --verbose /opt/nvidia_modelopt/wheels/nvidia-modelopt*.whl || echo "Failed to upload wheel to ${TWINE_REPOSITORY_URL}"
