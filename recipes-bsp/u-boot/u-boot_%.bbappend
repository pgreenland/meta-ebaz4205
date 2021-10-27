FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# our u-boot 2019.07 is forked, branched and patched for the support
SRCREV = "ec30ee60b706cfc61d2566eb9dae614118032b3b"

SRC_URI_remove = "git://git.denx.de/u-boot.git "
SRC_URI_prepend = "git://github.com/embed-me/u-boot.git;branch=v2019.07-ebaz4205 "
SRC_URI[md5sum] = "8e306fc668e78544a040cc0f7c5bdbba"

SRC_URI_append = " \
               file://ps7_init_gpl.c \
               file://ps7_init_gpl.h \
               "

HAS_PLATFORM_INIT += " zynq_ebaz4205_config"

do_configure_prepend() {
        mkdir -p ${S}/board/embedme/ebaz4205/${MACHINE}
        cp ${WORKDIR}/ps7_init_gpl.h ${S}/board/embedme/ebaz4205/${MACHINE}/
        cp ${WORKDIR}/ps7_init_gpl.c ${S}/board/embedme/ebaz4205/${MACHINE}/
        chmod 664 ${S}/board/embedme/ebaz4205/${MACHINE}/*
        sed -i 's/YYLTYPE yylloc;//' ${S}/scripts/dtc/dtc-lexer.l
}
