#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of mlstm_kernels ${MLSTM_KERNELS_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple mlstm_kernels==${MLSTM_KERNELS_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple mlstm_kernels==${MLSTM_KERNELS_VERSION_SPEC}
