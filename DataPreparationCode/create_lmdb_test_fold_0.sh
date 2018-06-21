TOOLS=/home/quangdat1511/caffe/build/tools
DATA=/home/quangdat1511/Downloads/AdienceFaces/DATA/aligned/
DEF_FILES=/home/quangdat1511/Downloads/AdienceFaces/folds/train_val_txt_files_per_fold/test_fold_is_0
OUT=/home/quangdat1511/Downloads/AdienceFaces/lmdb/Test_fold_is_0

# Set RESIZE=true to resize the images to 256x256. Leave as false if images have
# already been resized using another tool.
RESIZE=true
if $RESIZE; then
  RESIZE_HEIGHT=256
  RESIZE_WIDTH=256
else
  RESIZE_HEIGHT=0
  RESIZE_WIDTH=0
fi




echo "Creating  train leveldb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset --resize_height=$RESIZE_HEIGHT --resize_width=$RESIZE_WIDTH --shuffle  $DATA $DEF_FILES/age_train.txt $OUT/age_train_lmdb 

echo "Creating  train subset leveldb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset --resize_height=$RESIZE_HEIGHT --resize_width=$RESIZE_WIDTH --shuffle  $DATA $DEF_FILES/age_test.txt $OUT/age_test_lmdb 

echo "Creating  val leveldb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset --resize_height=$RESIZE_HEIGHT --resize_width=$RESIZE_WIDTH --shuffle  $DATA $DEF_FILES/age_val.txt $OUT/age_val_lmdb 



echo "Creating  train leveldb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset --resize_height=$RESIZE_HEIGHT --resize_width=$RESIZE_WIDTH --shuffle  $DATA $DEF_FILES/gender_train.txt $OUT/gender_train_lmdb

echo "Creating  train subset leveldb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset --resize_height=$RESIZE_HEIGHT --resize_width=$RESIZE_WIDTH --shuffle  $DATA $DEF_FILES/gender_test.txt $OUT/gender_test_lmdb

echo "Creating  val leveldb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset --resize_height=$RESIZE_HEIGHT --resize_width=$RESIZE_WIDTH --shuffle  $DATA $DEF_FILES/gender_val.txt $OUT/gender_val_lmdb



