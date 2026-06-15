#!/usr/bin/env bash
# PyTorch installer
set -ex

# install prerequisites
uv pip install --extra-index-url https://pypi.org/simple pysoundfile

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of torchaudio ${TORCHAUDIO_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple torchaudio~=${TORCHAUDIO_VERSION} || \
uv pip install --extra-index-url https://pypi.org/simple --prerelease=allow "torchaudio>=${TORCHAUDIO_VERSION}.dev,<=${TORCHAUDIO_VERSION}"
