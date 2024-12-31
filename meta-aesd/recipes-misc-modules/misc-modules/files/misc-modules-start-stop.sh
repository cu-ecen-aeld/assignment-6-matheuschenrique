#! /bin/sh

case $1 in
    start)
        insmod /lib/modules/$(uname -r)/extra/hello.ko
        insmod /lib/modules/$(uname -r)/extra/faulty.ko
        ;;
    stop)
        rmmod hello
        rmmod faulty
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

exit 0