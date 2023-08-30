#!/bin/bash
id -u &>/dev/null
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

if [ -f "/usr/local/bin/fwt" ]
then
    rm /usr/local/bin/fwt -f
    echo -e "FWT has been uninstalled from your system."
else
    echo -e "FWT is not present in your system."
fi
