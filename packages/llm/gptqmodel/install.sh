#!/usr/bin/env bash
set -ex

uv pip install --extra-index-url https://pypi.org/simple gekko

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of AutoGPTQ ${AUTOGPTQ_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple gptqmodel==${AUTOGPTQ_VERSION}

