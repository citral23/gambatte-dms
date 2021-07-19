#!/bin/sh

BDAT=$(date +"%Y%m%d-%H%M%S")
echo '#define BUILDDATE "'$BDAT'"' >./gambatte_sdl/builddate.h

echo "cd libgambatte && scons"
(cd libgambatte && scons -Q target=rs90) || exit
echo "cd gambatte_sdl && scons"
(cd gambatte_sdl && scons -Q target=rs90)
mv gambatte_sdl/gambatte_sdl gambatte_sdl/gambatte-dms.rs90

echo "cd gambatte_sdl && scons -c"
(cd gambatte_sdl && scons -c)
echo "cd libgambatte && scons -c"
(cd libgambatte && scons -c)
echo "rm -f *gambatte*/config.log"
rm -f *gambatte*/config.log
echo "rm -rf *gambatte*/.scon*"
rm -rf *gambatte*/.scon*
find . -type f -iname \*.o -delete
find . -type f -iname gambatte_sdl -delete

rm -f gambatte-dms-rs90-r572u4-$BDAT.opk
#mksquashfs ./dist/lepus/default.rs90.desktop ./gambatte_sdl/gambatte-dms.lepus ./dist/gambatte_dms.png ./dist/manual.txt gambatte-dms-rs90-r572u4-$BDAT.opk -all-root -no-xattrs -noappend -no-exports

#find . -type f -iname gambatte-dms.rs90 -delete
