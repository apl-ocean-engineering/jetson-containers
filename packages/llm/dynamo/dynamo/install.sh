#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of dynamo ${DYNAMO_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple "ai-dynamo[all]~=${DYNAMO_VERSION}" || \
uv pip install --extra-index-url https://pypi.org/simple "ai-dynamo[all]~=${DYNAMO_VERSION_SPEC}"
