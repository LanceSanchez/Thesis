#!/bin/sh
#latest=Thesis/snapshot/mobilenet_iter_73000.caffemodel
latest=$(ls -t /content/drive/Thesis/snapshot/*.caffemodel | head -n 1)
if test -z $latest; then
	exit 1
fi
~/content/caffe/build/tools/caffe train -solver="solver_test.prototxt" \
--weights=$latest \
-gpu 0
