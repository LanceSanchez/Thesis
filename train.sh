#!/bin/sh
if ! test -f Thesis/example/MobileNetSSD_train.prototxt ;then
	echo "error: example/MobileNetSSD_train.prototxt does not exist."
	echo "please use the gen_model.sh to generate your own model."
        exit 1
fi
mkdir -p snapshot
<<<<<<< HEAD
/content/caffe/build/tools/caffe train -solver="Thesis/solver_train.prototxt" \
-weights="Thesis/mobilenet_iter_73000.caffemodel" \
=======
/content/caffe/build/tools/caffe train -solver="solver_train.prototxt" \
-weights="mobilenet_iter_73000.caffemodel" \
>>>>>>> f1aaee4b34befd2b2bd56a270b81e6c49fd74651
-gpu 0

# -snapshot  snapshot/mobilenet_iter_106000.solverstate \
