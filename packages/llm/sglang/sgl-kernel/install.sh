#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of SGL-KERNEL ${SGL_KERNEL_VERSION} (branch=${SGL_KERNEL_BRANCH})"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple sgl-kernel==${SGL_KERNEL_VERSION}
