#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of quadrants ${QUADRANTS_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple quadrants==${QUADRANTS_VERSION}
