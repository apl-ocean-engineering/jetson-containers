#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of pytorch3d ${PYTORCH3D_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple pytorch3d~=${PYTORCH3D_VERSION} --prerelease=allow ||
uv pip install --extra-index-url https://pypi.org/simple pytorch3d~=${PYTORCH3D_VERSION_SPEC} --prerelease=allow
