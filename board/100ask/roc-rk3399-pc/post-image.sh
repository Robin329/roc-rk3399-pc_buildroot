#!/bin/sh

#MKIMAGE=$HOST_DIR/bin/mkimage

BOARD_DIR="$(dirname $0)"
GENIMAGE_CFG="${BOARD_DIR}/sd-image.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"


rm -rf "${GENIMAGE_TMP}"

genimage							\
	--rootpath "${TARGET_DIR}"		\
	--tmppath "${GENIMAGE_TMP}"		\
	--inputpath "${BINARIES_DIR}"	\
	--outputpath "${BINARIES_DIR}"	\
	--config "${GENIMAGE_CFG}"

exit $?
