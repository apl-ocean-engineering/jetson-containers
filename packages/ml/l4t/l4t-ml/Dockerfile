#---
# name: l4t-ml
# group: ml
# depends: [
# buildkit_device: nvidia.com/gpu=all
#   tensorflow2, jax,
#   pytorch, torchvision, torchaudio, torchao,
#   pycuda, cupy, cuda-python,
#   onnxruntime, numba,
#   opencv, gstreamer, jupyterlab]
# test: [test_pandas.py, test_scipy.py, test_sklearn.py]
#---
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN uv pip install --extra-index-url https://pypi.org/simple scipy
RUN uv pip install --extra-index-url https://pypi.org/simple scikit-learn
RUN uv pip install --extra-index-url https://pypi.org/simple pandas
