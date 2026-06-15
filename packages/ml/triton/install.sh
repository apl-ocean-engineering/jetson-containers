#!/usr/bin/env bash
#triton
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of triton ${TRITON_VERSION} (branch=${TRITON_BRANCH})"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple triton==${TRITON_VERSION} --prerelease=allow
