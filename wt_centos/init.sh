#!/bin/bash
/usr/bin/supervisord --configuration /etc/supervisord.conf

tail -f /dev/null
