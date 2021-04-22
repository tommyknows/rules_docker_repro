#!/bin/bash
mkdir -p tar-contents/3_{8,9}

echo "Python 3.8"
bazel build :mybin > /dev/null 2>&1
echo "Container SHA sum"
sha256sum ./bazel-bin/mybin-layer.tar

echo "SHA sum Binary:"
tar -xvf ./bazel-bin/mybin-layer.tar -C tar-contents/3_8/ > /dev/null 2>&1
sha256sum tar-contents/3_8/app/mybin.binary.runfiles/__main__/mybin.binary_/mybin.binary

echo "======================================="

echo "Python 3.9"
bazel build :mybin --define py3_9=yes > /dev/null 2>&1
echo "Container SHA sum"
sha256sum ./bazel-bin/mybin-layer.tar

echo "SHA sum Binary:"
tar -xvf ./bazel-bin/mybin-layer.tar -C tar-contents/3_9 > /dev/null 2>&1
sha256sum tar-contents/3_9/app/mybin.binary.runfiles/__main__/mybin.binary_/mybin.binary

rm -rf tar-contents
