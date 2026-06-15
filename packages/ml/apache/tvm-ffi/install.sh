#!/usr/bin/env bash
set -ex

if [ "$FORCE_BUILD" == "on" ]; then
	echo "Forcing build of TVM ${TVM_FFI_VERSION}"
	exit 1
fi

uv pip install --extra-index-url https://pypi.org/simple apache-tvm-ffi==${TVM_FFI_VERSION} ||
uv pip install --extra-index-url https://pypi.org/simple --no-cache-dir apache-tvm-ffi==${TVM_FFI_VERSION} ||
uv pip install --extra-index-url https://pypi.org/simple pre apache-tvm-ffi==${TVM_FFI_VERSION} ||
uv pip install --extra-index-url https://pypi.org/simple --no-cache-dir pre apache-tvm-ffi==${TVM_FFI_VERSION} ||
echo "failed to install TVM ${TVM_VERSION}"
