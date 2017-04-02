#!/bin/bash -e

PROG="pvpython $PWD/evaluation/paraview-render.py"

for DIR in */cube/linear/
do
  echo $DIR
  $PROG $DIR/vtk/pieces.pvtu $DIR/paraview.png
done

for DIR in */cube-cylinder/linear/
do
  echo $DIR
  $PROG $DIR/vtk/pieces.pvtu $DIR/paraview.png
done

for DIR in */cube-cylinder/polar-1/
do
  echo $DIR
  $PROG $DIR/vtk/pieces.pvtu $DIR/paraview.png
done

for DIR in */cube-cylinder/polar-2/
do
  echo $DIR
  $PROG $DIR/vtk/pieces.pvtu $DIR/paraview.png
done
