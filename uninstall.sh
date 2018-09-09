#!/bin/sh

daemon=hello_world
rm -f /usr/bin/$daemon /usr/lib/systemd/system/$daemon.service /etc/rsyslog.d/$daemon.conf /etc/logrotate.d/$daemon.conf
