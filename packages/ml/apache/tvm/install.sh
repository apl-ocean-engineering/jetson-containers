#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of TVM ${TVM_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple apache-tvm==${TVM_VERSION} ||
uv pip install --extra-index-url https://pypi.org/simple --no-cache-dir tvm==${TVM_VERSION} ||
uv pip install --extra-index-url https://pypi.org/simple pre apache-tvm==${TVM_VERSION} ||
uv pip install --extra-index-url https://pypi.org/simple --no-cache-dir pre tvm==${TVM_VERSION} ||
echo "failed to install TVM ${TVM_VERSION}"
