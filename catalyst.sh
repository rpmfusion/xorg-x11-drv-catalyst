ARCH="$(uname -m)"

case "$ARCH" in
        x86_64) export LIBGL_DRIVERS_PATH="/usr/lib64/dri:/usr/lib/dri:$LIBGL_DRIVERS_PATH";
                export LD_LIBRARY_PATH="/usr/lib64/fglrx:/usr/lib/catalyst:$LD_LIBRARY_PATH";;
    i[3-6\d]86) export LIBGL_DRIVERS_PATH="/usr/lib/dri:$LIBGL_DRIVERS_PATH";
                export LD_LIBRARY_PATH="/usr/lib/catalyst:$LD_LIBRARY_PATH";;
esac

