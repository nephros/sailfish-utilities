#!/bin/sh

function warning {
    echo "`basename $0`: Warning: ${@:1}" 1>&2;
}

function service_do {
    if systemctl $1 $2; then
        return 0;
    else
        warning "Status $?" "on $1 $2" ${@:3}
        return 1;
    fi
}

service_do restart bluetooth
systemctl is-active --quiet bluetooth-rfkill-event && service_do restart bluetooth-rfkill-event
systemctl is-active --quiet bluebinder             && service_do restart bluebinder
