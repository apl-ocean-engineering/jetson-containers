#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of fastvideo ${FASTVIDEO_VERSION}"
	exit 1
fi

# fastvideo-kernel ships x86-only wheels, so pip install will fail on aarch64
uv pip install --extra-index-url https://pypi.org/simple fastvideo==${FASTVIDEO_VERSION}
