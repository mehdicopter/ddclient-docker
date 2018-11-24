#!/bin/sh

sed -i 's/$LOGIN/'"$LOGIN"'/g' /etc/ddclient/ddclient.conf
sed -i 's/$PASSWORD/'"$PASSWORD"'/g' /etc/ddclient/ddclient.conf
sed -i 's/$DYNHOST/'"$DYNHOST"'/g' /etc/ddclient/ddclient.conf

exec "$@"
