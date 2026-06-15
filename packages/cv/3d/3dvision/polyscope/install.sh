#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of polyscope ${POLYSCOPE_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple polyscope==${POLYSCOPE_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple polyscope==${POLYSCOPE_VERSION_SPEC}
