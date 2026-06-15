#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of cuda-python ${CUDA_PYTHON_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple --no-cache-dir cuda-python==${CUDA_PYTHON_VERSION} ||
uv pip install --extra-index-url https://pypi.org/simple --no-cache-dir cuda_core cuda_bindings==${CUDA_PYTHON_VERSION}
