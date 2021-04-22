# rules_docker Python 3.8 / 3.9 Image Digest

Further info [in this issue](https://github.com/bazelbuild/rules_docker/issues/1680)

Example Output of ./reproduce.sh:

```
Python 3.8
Container SHA sum
c0f17d8155e294ad5ba2092202f306d109025e67cb725143d4c4f32bb382dc7e  ./bazel-bin/mybin-layer.tar
SHA sum Binary:
bf22deb809d0ce210b6fe8e1fc54b9945bcbc0dba7db1f22e8a34c10c1eeb10b  tar-contents/3_8/app/mybin.binary.runfiles/__main__/mybin.binary_/mybin.binary
=======================================
Python 3.9
Container SHA sum
c915970439d24fb5fb2105a86d0894567e4773856e5366513f610b017a6a37f8  ./bazel-bin/mybin-layer.tar
SHA sum Binary:
bf22deb809d0ce210b6fe8e1fc54b9945bcbc0dba7db1f22e8a34c10c1eeb10b  tar-contents/3_9/app/mybin.binary.runfiles/__main__/mybin.binary_/mybin.binary

```
