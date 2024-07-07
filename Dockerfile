from chimeralinux/chimera:latest as chimera

from tianon/toybox:latest as toybox

COPY --from=chimera /usr/sbin/awk /bin/awk
COPY --from=chimera /lib/ld-musl-x86_64.so.1 /lib/ld-musl-x86_64.so.1
COPY --from=chimera /lib/libc.so /lib/libc.so

from scratch as bsdbox
COPY --from=toybox / /
CMD ["sh"]
