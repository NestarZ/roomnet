mkdir data && cd data
#https://github.com/nafmichael/lsun-room
wget http://lsun.cs.princeton.edu/challenge/2015/roomlayout/data/image.zip
wget http://lsun.cs.princeton.edu/challenge/2015/roomlayout/data/training.mat
wget http://lsun.cs.princeton.edu/challenge/2015/roomlayout/data/validation.mat
wget http://lsun.cs.princeton.edu/challenge/2015/roomlayout/data/testing.mat
unzip image.zip
rm -rf image.zip

python prepare_data.py
python2 main.py --train 0 --net rcnn --out_path ../OUTPUT/