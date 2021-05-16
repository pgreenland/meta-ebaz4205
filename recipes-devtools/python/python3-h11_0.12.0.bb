SUMMARY = "A pure-Python, bring-your-own-I/O implementation of HTTP/1.1"
HOMEPAGE = "https://github.com/python-hyper/h11"
SECTION = "devel/python"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=f5501d19c3116f4aaeef89369f458693"

SRC_URI[md5sum] = "6b23d6eafbeaadf43ce26ec0a9a99594"
SRC_URI[sha256sum] = "47222cb6067e4a307d535814917cd98fd0a57b6788ce715755fa2b6c28b56042"

PYPI_PACKAGE = "h11"

CLEANBROKEN = "1"

inherit pypi setuptools3