if [ ! -d ~/.new ] 
then
    mkdir ~/.new
fi

for folder in $@
do
    TOTAL="$TOTAL/$folder"
done    

cp ~/.new$TOTAL/* $PWD
