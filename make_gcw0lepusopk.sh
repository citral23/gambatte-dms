#!/bin/sh
BDAT=$(date +"%Y%m%d")

mksquashfs ./dist/gcw0/default.gcw0.desktop ./gambatte_sdl/gambatte-dms.gcw0 ./dist/lepus/default.lepus.desktop ./gambatte_sdl/gambatte-dms.lepus ./dist/gambatte_dms.png ./dist/manual.txt gambatte-dms-gcw0-lepus-r572u4-$BDAT.opk -all-root -no-xattrs -noappend -no-exports
