FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
               file://ebaz4205.diff \
               file://ps7_init_gpl.c \
               file://ps7_init_gpl.h \
               "

HAS_PLATFORM_INIT += " zynq_ebaz4205_config"

do_configure_prepend() {
        mkdir -p ${S}/board/embedme/ebaz4205/${MACHINE}
        cp ${WORKDIR}/ps7_init_gpl.h ${S}/board/embedme/ebaz4205/${MACHINE}/
        cp ${WORKDIR}/ps7_init_gpl.c ${S}/board/embedme/ebaz4205/${MACHINE}/
        chmod 664 ${S}/board/embedme/ebaz4205/${MACHINE}/*
}
