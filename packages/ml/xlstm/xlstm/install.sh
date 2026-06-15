#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of xlstm ${XLSTM_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple xlstm==${XLSTM_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple xlstm==${XLSTM_VERSION_SPEC}
