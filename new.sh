#! /bin/bash

if [ ! -d ~/.new ] 
then
    mkdir ~/.new
fi

if [ ! -d ~/.new/.tmp ] 
then
    mkdir ~/.new/.tmp
fi

for folder in $@
do
    TOTAL="$TOTAL/$folder"
    echo $TOTAL
done    


rm -rf ~/.new/.tmp/* #clear temp
cp -R ~/.new$TOTAL/* ~/.new/.tmp #copy to intermediate location
find ~/.new/.tmp -type f -name ".*" -delete #strip of hidden files/directories
cp -R ~/.new/.tmp/* "$PWD" #copy stripped version of folder
