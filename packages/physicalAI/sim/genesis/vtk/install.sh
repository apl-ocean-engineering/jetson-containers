#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of vtk ${VTK}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple vtk==${VTK_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple vtk==${VTK_VERSION_SPEC}
