#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of torchsde ${TORCHSDE_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple torchsde~=${TORCHSDE_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple --prerelease=allow "torchsde>=${TORCHSDE_VERSION}.dev,<=${TORCHSDE_VERSION}"

if [ "$(lsb_release -rs)" = "20.04" ]; then
    # https://github.com/conda/conda/issues/13619
    uv pip install --extra-index-url https://pypi.org/simple pyopenssl==24.0.0
fi
