#!/bin/bash

fqdn=$(hostname -f)

rocky_release=/etc/rocky-release

if [[ -f "${rocky_release}" ]]; then
    release=$(cat "${rocky_release}")
else
    release="Rocky Linux release information unavailable"
fi

printf "
==================================================

%s
%s

==================================================

" "${fqdn}" "${release}"
