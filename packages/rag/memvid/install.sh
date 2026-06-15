#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of MemVid ${MEMVID_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple PyPDF2
uv pip install --extra-index-url https://pypi.org/simple memvid==${MEMVID_VERSION}
