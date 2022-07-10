# this file is supposed to be sourced by the get-files shell script

# right now i'm still using a postmarketos kernel+initrd=boot.img and will maybe later move to an own boot.img

# get a kernel etc. from a special portmarketos based build

amazon_suez_pmos_release_version="linux-amazon-suez-3.18.19-r8"

rm -rf ${DOWNLOAD_DIR}/postinstall-${1}
mkdir -p ${DOWNLOAD_DIR}/postinstall-${1}
wget -v https://github.com/hexdump0815/pmaports-amazon/releases/download/${amazon_suez_pmos_release_version}/boot-and-modules-amazon-suez.tar.gz -O ${DOWNLOAD_DIR}/postinstall-${1}/boot-and-modules.tar.gz
