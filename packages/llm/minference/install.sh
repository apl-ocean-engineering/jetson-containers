#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of minference ${MINFERENCE_VERSION}"
	exit 1
fi
uv pip install --extra-index-url https://pypi.org/simple tilelang
uv pip install --extra-index-url https://pypi.org/simple minference==${MINFERENCE_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple minference==${MINFERENCE_VERSION_SPEC}
