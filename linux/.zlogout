if [ -n "$SSH_CONNECTION" ] ; then
    if test `who | grep $USER  2> /dev/null | wc -l` -eq 1;
    then
        for pid in $( ps auxw | grep $USER | grep "dbus\|ibus\|mozc_" | grep -v grep|awk '{print $2}' ); do
            kill $pid 2> /dev/null
        done
    fi
fi
