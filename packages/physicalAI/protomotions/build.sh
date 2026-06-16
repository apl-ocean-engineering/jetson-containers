#!/usr/bin/env bash
set -ex

# Clone the repository if it doesn't exist
git clone --branch=v${PROTOMOTIONS_VERSION} --depth=1 --recursive https://github.com/NVlabs/ProtoMotions /opt/protomotions  || \
git clone --depth=1 --recursive https://github.com/NVlabs/ProtoMotions  /opt/protomotions

uv pip install --extra-index-url https://pypi.org/simple --upgrade setuptools wheel wandb

# Navigate to the directory containing mamba's setup.py
cd /opt/protomotions
git lfs fetch --all
sed -i '/torch/d; /open3d/d; /wandb/d; /PyOpenGL==3\.1\.4/d' requirements_genesis.txt


uv pip install --extra-index-url https://pypi.org/simple open3d PyOpenGL
uv pip install --extra-index-url https://pypi.org/simple -e .
uv pip install --extra-index-url https://pypi.org/simple -r requirements_genesis.txt
uv pip install --extra-index-url https://pypi.org/simple -e isaac_utils
uv pip install --extra-index-url https://pypi.org/simple -e poselib

uv build --wheel --out-dir /opt/protomotions/wheels/ --verbose .
# uv pip install --extra-index-url https://pypi.org/simple /opt/protomotions/wheels/protomotions*.whl

cd /opt/protomotions

# Optionally upload to a repository using Twine
twine upload --verbose /opt/protomotions/wheels/protomotions*.whl || echo "Failed to upload wheel to ${TWINE_REPOSITORY_URL}"
