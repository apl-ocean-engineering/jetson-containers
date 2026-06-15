#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of diffusers ${DIFFUSERS_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple diffusers==${DIFFUSERS_VERSION} || \
	uv pip install --extra-index-url https://pypi.org/simple diffusers==${DIFFUSERS_VERSION}.dev0
