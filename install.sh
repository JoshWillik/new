if [ -d /usr/bin ]
then
    touch /usr/bin/new
    BINPATH=/usr/bin/new
else
    touch /bin/new
    BINPATH=/usr/bin/new
fi

mv new.sh $BINPATH

