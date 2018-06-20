TOOLS=/home/dom/caffe/build/tools
DATA=/home/dom/Downloads/AdienceFaces/lmdb/Test_fold_is_4/gender_train_lmdb
OUT=/home/dom/Downloads/AdienceFaces/mean_image/Test_folder_is_4

$TOOLS/compute_image_mean $DATA $OUT/mean.binaryproto

