#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of mamba ${MAMBA}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple mamba_ssm==${MAMBA_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple mamba_ssm==${MAMBA_VERSION_SPEC}
