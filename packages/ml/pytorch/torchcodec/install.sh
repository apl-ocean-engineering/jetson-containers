#!/usr/bin/env bash
# PyTorch installer
set -ex

# install prerequisites
uv pip install --extra-index-url https://pypi.org/simple pysoundfile

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of torchcodec ${TORCHCODEC_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple torchcodec~=${TORCHCODEC_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple --prerelease=allow "torchcodec>=${TORCHCODEC_VERSION}.dev,<=${TORCHCODEC_VERSION}"
