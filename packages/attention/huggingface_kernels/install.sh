#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of Hugging-Face Kernels ${KERNELS_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple kernels==${KERNELS_VERSION}
uv pip show kernels && python3 -c 'import kernels'
