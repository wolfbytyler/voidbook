# this file is supposed to be sourced by the get-files shell script

chromebook_kukui_release_version="6.1.51-stb-mt8%2B"
mesa_release_version="22.1.1"

rm -f ${DOWNLOAD_DIR}/kernel-chromebook_kukui-${2}.tar.gz
wget -v https://github.com/hexdump0815/linux-mainline-mediatek-mt81xx-kernel/releases/download/${chromebook_kukui_release_version}/${chromebook_kukui_release_version}.tar.gz -O ${DOWNLOAD_DIR}/kernel-chromebook_kukui-${2}.tar.gz

( cd ${DOWNLOAD_DIR} ; tar xzf kernel-chromebook_kukui-${2}.tar.gz boot ; mv boot/vmlinux.kpart-* boot-chromebook_kukui-${2}.dd ; rm -rf boot )
