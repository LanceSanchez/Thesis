#!/bin/sh
#latest=Thesis/snapshot/mobilenet_iter_73000.caffemodel
latest=$(ls -t Thesis/snapshot/*.caffemodel | head -n 1)
if test -z $latest; then
	exit 1
fi
<<<<<<< HEAD
/content/caffe/build/tools/caffe train -solver="Thesis/solver_test.prototxt" \
=======
/content/caffe/build/tools/caffe train -solver="solver_test.prototxt" \
>>>>>>> f1aaee4b34befd2b2bd56a270b81e6c49fd74651
--weights=$latest \
-gpu 0
