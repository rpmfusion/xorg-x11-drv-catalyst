#!/bin/sh

if [ -x /usr/lib/rpm/redhat/find-provides ]; then
   FINDPROV=/usr/lib/rpm/redhat/find-provides
else
   FINDPROV=/usr/lib/rpm/find-provides
fi

$FINDPROV $* | sed -e '/libGL.so/d'

