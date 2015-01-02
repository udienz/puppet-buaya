#!/bin/bash -x

rm /var/log/rsync/rsync-xfer.clf

grep ' send ' /var/log/rsync/rsync.log | while read tanggal jam pid send namahost ip modul kurungan path besaran
	do
	ipnya=$(echo $ip| sed -e 's/]//' -e 's/\[//')
	DATE=$(date -d"$tanggal $jam" +'%a %b %d %R:00 %Y')
	echo "$DATE 1 $ipnya $besaran /$modul/$path b _ o a anonymous ftp 0 * c" >> /var/log/rsync/rsync-xfer.clf
	done
# vim:syntax=bash
