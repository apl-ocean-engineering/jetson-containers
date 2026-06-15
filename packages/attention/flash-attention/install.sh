#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of FlashAttention ${FLASH_ATTENTION_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple flash-attn==${FLASH_ATTENTION_VERSION}
uv pip show flash-attn && python3 -c 'import flash_attn'
