if [ -d /usr/bin ]
then
    touch /usr/bin/new
    BINPATH=/usr/bin/new
else
    touch /bin/new
    BINPATH=/usr/bin/new
fi

cp new.sh $BINPATH
chmod 755 $BINPATH #allows it to execute

