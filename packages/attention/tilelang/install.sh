#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of FlashAttention ${TILELANG_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple tilelang==${TILELANG_VERSION}
uv pip show tilelang && python3 -c 'import tilelang'
