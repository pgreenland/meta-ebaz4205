FILESEXTRAPATHS_prepend := "${THISDIR}/config:"

SRC_URI_append = " \
                 file://bsp/net/eth.scc \
                 file://bsp/fs/mtd.scc \
                 "

KERNEL_FEATURES_append = " \  
                         eth.scc \
                         mtd.scc \
                         "
