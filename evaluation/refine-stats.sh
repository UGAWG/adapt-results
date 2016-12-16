#! /usr/bin/env bash

set -x # echo commands
set -e # exit on first error
set -u # Treat unset variables as error

meshb=$1
metric=temp.metric
hmin=0.001

ref_acceptance ${meshb} ${metric} ${hmin}
ref_metric_test ${meshb} ${metric} > status.txt

gnuplot ref_histogram_edge-ratio.gnuplot
epstopdf ref_histogram_edge-ratio.eps

rm -f ${metric}
rm -f ref_histogram_edge-ratio.eps
rm -f ref_histogram_edge-ratio.gnuplot
rm -f ref_metric_test_s00_n1_p0_ellipse.tec
rm -f ref_metric_test_surf.tec

