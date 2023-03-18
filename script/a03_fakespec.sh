#!/bin/sh -f

rm -f out/cutoffpl_fak.pha out/cutoffpl_fak_bkg.pha
xspec <<EOF
@input/fake.xcm
exit
EOF