#! /bin/bash

if [ ! -d ~/.new ] 
then
    #echo 1 #debugging
    mkdir ~/.new
    #echo 2 #debugging
    mkdir ~/.new/example
    #echo 3 #debugging
    #echo "This is an example test page. Run \$new example to clone me to a directory" > ~/.new/example
    #echo 4 #debugging
fi
#echo 5 #debugging

if [ ! -d ~/.new/.tmp ] 
then
    #echo 6 #debugging
    mkdir ~/.new/.tmp
    #echo 7 #debugging
fi
#echo 8 #debugging

for folder in $@
do
    TOTAL="$TOTAL/$folder"
   # #echo $TOTAL
done    

#echo 9 #debugging

rm -rf ~/.new/.tmp/* #clear temp
#echo 10 #debugging
cp -R ~/.new$TOTAL/* ~/.new/.tmp #copy to intermediate location
#echo 11 #debugging
find ~/.new/.tmp -type f -name ".*" -delete #strip of hidden files/directories
#echo 12 #debugging
cp -R ~/.new/.tmp/* "$PWD" #copy stripped version of folder
#echo 13 #debugging
