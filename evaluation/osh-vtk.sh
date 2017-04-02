#!/bin/bash -e

PROG1=$HOME/build/gcc/omega_h/src/meshb2osh
PROG2=$HOME/build/gcc/omega_h/src/osh2vtk

for DIR in */cube/linear/
do
  echo $DIR/*.meshb
  $PROG1 $DIR/*.meshb $DIR/tmp.osh
  $PROG2 $DIR/tmp.osh $DIR/vtk
  rm -rf $DIR/tmp.osh
done

for DIR in */cube-cylinder/linear/
do
  echo $DIR/*.meshb
  $PROG1 $DIR/*.meshb $DIR/tmp.osh
  $PROG2 $DIR/tmp.osh $DIR/vtk
  rm -rf $DIR/tmp.osh
done

for DIR in */cube-cylinder/polar-1/
do
  echo $DIR/*.meshb
  $PROG1 $DIR/*.meshb $DIR/tmp.osh
  $PROG2 $DIR/tmp.osh $DIR/vtk
  rm -rf $DIR/tmp.osh
done

for DIR in */cube-cylinder/polar-2/
do
  echo $DIR/*.meshb
  $PROG1 $DIR/*.meshb $DIR/tmp.osh
  $PROG2 $DIR/tmp.osh $DIR/vtk
  rm -rf $DIR/tmp.osh
done
