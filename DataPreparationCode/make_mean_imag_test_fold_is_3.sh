TOOLS=/home/quangdat1511/caffe/build/tools
DATA=/home/quangdat1511/Downloads/AdienceFaces/lmdb/Test_fold_is_0/gender_train_lmdb
OUT=/home/quangdat1511/Downloads/AdienceFaces/mean_image/Test_folder_is_3

$TOOLS/compute_image_mean $DATA $OUT/mean.binaryproto

