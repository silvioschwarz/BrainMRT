#! /bin/sh

#sudo apt update && sudo apt upgrade
#sudo apt install dcmtk

BASEDIR=$PWD
echo $BASEDIR

rm -rf ${BASEDIR}/data/PNG/
rm -rf ${BASEDIR}/data/gif/

mkdir ${BASEDIR}/data/PNG/
mkdir ${BASEDIR}/data/gif/

echo "change directory"
cd $PWD/DICOM/ST000000/
ls $PWD

echo "real 
SE000000  SE000002  SE000004  SE000006	SE000008  SE000010  SE000012  SE000014	SE000016  SE000018
SE000001  SE000003  SE000005  SE000007	SE000009  SE000011  SE000013  SE000015	SE000017  SE000019
"

find . -name '*.png' -type f -exec rm -rf {} +
find . -name '*.gif' -type f -exec rm -rf {} +


for f in *; do
	[ -d $f ] && cd "$f" && echo "Entering into $f and converting to png"
		#mkdir ${BASEDIR}/data/PNG/$f/
		for x in *; do 
			echo "converting $f/$x to png"
			dcmj2pnm +on $x $x.png; 
		done;
	echo "converting $f to gif"
	convert -delay 10 -loop 0 *.png animation_$f.gif
	
	mkdir ${BASEDIR}/data/PNG/$f/
	echo "move png $f to ${BASEDIR}/data/PNG/$f/"
	mv *.png ${BASEDIR}/data/PNG/$f/
	echo "move gif $f to ${BASEDIR}/data/gif"
	mv *.gif ${BASEDIR}/data/gif/
	
	cd ../
done;


#find ./apps -type d -exec echo Entering into {} and installing packages \; 
