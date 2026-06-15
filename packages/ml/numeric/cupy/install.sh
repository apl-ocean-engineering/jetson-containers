#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of CuPy ${CUPY_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple cupy==${CUPY_VERSION}
