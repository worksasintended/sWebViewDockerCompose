#!/bin/bash
/usr/bin/supervisord --configuration /etc/supervisord.conf

exec "$@"
