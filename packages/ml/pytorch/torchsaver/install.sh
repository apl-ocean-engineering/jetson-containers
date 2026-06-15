#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of torch_memory_saver ${TORCH_MEMORY_SAVER_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple torch-memory-saver==${TORCH_MEMORY_SAVER_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple --prerelease=allow "torch-memory-saver>=${TORCH_MEMORY_SAVER_VERSION}.dev,<=${TORCH_MEMORY_SAVER_VERSION}"
