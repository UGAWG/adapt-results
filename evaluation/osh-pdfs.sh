#!/bin/bash -e

PROG=$HOME/build/gcc/omega_h/src/ugawg_stats
COMARGS="-n 25 25 -h 0 2.5"

for DIR in */cube/linear/
do
  echo $DIR/*.meshb
  $PROG $COMARGS -m cube-linear -f $DIR/quality.eps $DIR/length.eps $DIR/*.meshb
  epstopdf $DIR/quality.eps
  epstopdf $DIR/length.eps
  rm $DIR/quality.eps
  rm $DIR/length.eps
done

for DIR in */cube-cylinder/linear/
do
  echo $DIR/*.meshb
  $PROG $COMARGS -m cube-cylinder-linear -f $DIR/quality.eps $DIR/length.eps $DIR/*.meshb
  epstopdf $DIR/quality.eps
  epstopdf $DIR/length.eps
  rm $DIR/quality.eps
  rm $DIR/length.eps
done

for DIR in */cube-cylinder/polar-1/
do
  echo $DIR/*.meshb
  $PROG $COMARGS -m cube-cylinder-polar-1 -f $DIR/quality.eps $DIR/length.eps $DIR/*.meshb
  epstopdf $DIR/quality.eps
  epstopdf $DIR/length.eps
  rm $DIR/quality.eps
  rm $DIR/length.eps
done

for DIR in */cube-cylinder/polar-2/
do
  echo $DIR/*.meshb
  $PROG $COMARGS -m cube-cylinder-polar-2 -f $DIR/quality.eps $DIR/length.eps $DIR/*.meshb
  epstopdf $DIR/quality.eps
  epstopdf $DIR/length.eps
  rm $DIR/quality.eps
  rm $DIR/length.eps
done

rm -f Omega_h_histogram.py
