# BSDbox

This is a basic dockerfile template for a BSD/MIT-licensed alternative base image to the widely used busybox image.
For now, this just pulls toybox (BSD-0 licensed), musl libc (MIT licensed), and the BSD awk (BSD-3 licensed),
and squashes the result into a ~3 MB base image that should be able to run most posix shell scripts.
