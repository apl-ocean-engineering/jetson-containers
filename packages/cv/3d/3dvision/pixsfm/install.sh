#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of pixsfm ${PIXSFM}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple pixsfm==${PIXSFM_VERSION}
