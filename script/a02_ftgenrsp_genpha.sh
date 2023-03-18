#!/bin/sh -f

rm -f out/sample.rsp
ftgenrsp infile=NONE outfile=out/sample.rsp resolreln=SQROOT fwhm=0.1 \
	tlscpe='CUBESAT' instrm='CSI' \
	units=keV respreln=LINEAR resplow=0.1 resphigh=40.0 respnumber=4096 \
	chanreln=LINEAR chanlow=0.0 chanhigh=40.0 channumber=4096 \
	efffile=none detfile=none filfile=none

rm -f out/bgd.pha
ascii2pha infile='out/bgd_pha.txt' outfile='out/bgd.pha' chanpres=yes \
	dtype=1 qerror=no rows=- tlmin=0 detchans=4096 \
	telescope='CUBESAT' instrume='CSI' detnam='MOMOTARO' \
	filter=NONE exposure=100.0 chantype='PI'