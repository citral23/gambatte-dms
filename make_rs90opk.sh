#!/bin/sh
BDAT=$(date +"%Y%m%d")

mksquashfs ./dist/rs90/default.rs90.desktop ./gambatte_sdl/gambatte-dms.rs90 ./dist/gambatte_dms.png ./dist/manual.txt gambatte-dms-rs90-r572u4-$BDAT.opk -all-root -no-xattrs -noappend -no-exports
