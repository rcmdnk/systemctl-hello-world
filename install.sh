#!/bin/sh

daemon=hello_world
cp usr/bin/$daemon /usr/bin/
echo "/usr/bin/$daemon was installed"
cp usr/lib/systemd/system/$daemon.service /usr/lib/systemd/system/
echo "/usr/lib/systemd/system/$daemon.service was installed"
cp etc/rsyslog.d/$daemon.conf /etc/rsyslog.d/
systemctl daemon-reload
echo "/etc/rsyslog/$daemon.conf was installed"
systemctl restart rsyslog
cp etc/logrotate.d/$daemon.conf /etc/logrotate.d/
echo "/etc/logrotate.d/$daemon.conf was installed"
