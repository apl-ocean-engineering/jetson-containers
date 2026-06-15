#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of TensorRT-Model-Optimizer ${NVIDIA_MODELOPT_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple nvidia-modelopt==${NVIDIA_MODELOPT_VERSION}
