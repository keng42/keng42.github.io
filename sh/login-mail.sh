mail -s "Alert: VPS Login from `who | cut -d'(' -f2 | cut -d')' -f1`" \
$1 << EOF
ALERT - VPS Login
hostname: `hostname`
who: `who`
time: `date`
EOF
