#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of ktransformers ${KTRANSFORMERS_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple compressed-tensors ktransformers==${KTRANSFORMERS_VERSION}
