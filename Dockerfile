from chimeralinux/chimera:latest as chimera

from tianon/toybox:latest as toybox

COPY --from=chimera /usr/sbin/awk /bin/awk
COPY --from=chimera /usr/sbin/tr /bin/tr
COPY --from=chimera /bin/diff /bin/diff
COPY --from=chimera /bin/diff3 /bin/diff3
COPY --from=chimera /lib/ld-musl-x86_64.so.1 /lib/ld-musl-x86_64.so.1
COPY --from=chimera /lib/libc.so /lib/libc.so

from scratch
COPY --from=toybox / /
CMD ["sh"]

