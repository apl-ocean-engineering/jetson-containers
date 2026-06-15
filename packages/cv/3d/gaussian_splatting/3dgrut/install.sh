#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of 3DGRUT ${THREEGRUT_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple 3dgrut==${THREEGRUT_VERSION}
uv pip install --extra-index-url https://pypi.org/simple --force-reinstall opencv-contrib-python
