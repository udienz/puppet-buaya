#!/usr/bin/env python

# Converts rsync log format to xferlog format

# Author: Fajran Iman Rusadi <fajran|ubuntu.com>
# License: Public Domain

import re
import sys
from datetime import datetime

r = re.compile(u'^([^ ]+) ([^ ]+) \[(\d+)\] (.+)$')
ra = re.compile(u'rsync .. ([^ ]+) from ([^ ]+) \((.+)\)$')
rs = re.compile(u'sent (\d+) bytes\s+received (\d+) bytes\s+total size (\d+)')

data = {}

for line in sys.stdin:
	m = r.match(line.strip())
	(d, t, pid, msg) = m.groups()

	if msg.startswith("rsync on") or msg.startswith("rsync to"):
		m = ra.match(msg)
		(dir, host, ip) = m.groups()

		data[pid] = [dir, host, ip]
		
	if msg.startswith("sent"):
		m = rs.match(msg)
		(sent, received, total) = m.groups()

		(dir, host, ip) = data[pid];

		dt = datetime.strptime("%s %s" % (d, t), "%Y/%m/%d %H:%M:%S").strftime("%a %b %d %H:%M:%S %Y")

		print "%s 1 %s %s /%s b _ o a anonymous ftp 0 * c" % (dt, ip, sent, dir)
		print "%s 1 %s %s /%s b _ i a anonymous ftp 0 * c" % (dt, ip, received, dir)
