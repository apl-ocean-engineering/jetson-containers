#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of piper1-tts ${PIPER_VERSION} (${PIPER_BRANCH})"
	exit 1
fi

# install the wheel
uv pip install --extra-index-url https://pypi.org/simple piper-tts==${PIPER_VERSION}

# make sure it loads
uv pip show piper-tts
