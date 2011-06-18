set arch = `uname -m`

if ($arch == x86_64) then
    setenv LIBGL_DRIVERS_PATH /usr/lib64/dri:/usr/lib/dri:$LIBGL_DRIVERS_PATH
    setenv LD_LIBRARY_PATH /usr/lib64/catalyst:/usr/lib/catalyst:$LD_LIBRARY_PATH
else if ($arch =~ i[3-6]86) then
    setenv LIBGL_DRIVERS_PATH /usr/lib/dri:$LIBGL_DRIVERS_PATH
    setenv LD_LIBRARY_PATH /usr/lib/catalyst:$LD_LIBRARY_PATH
endif
