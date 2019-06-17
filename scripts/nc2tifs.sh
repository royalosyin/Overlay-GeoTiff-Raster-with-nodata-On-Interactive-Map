#!/bin/bash
# Copyright (c) chy.
# Distributed under the terms of the Modified BSD License.
infile=mslp.mon.mean.nc
band=1
for idate in $(cdo showdate $infile) 
do
  echo $band
  ym="${idate:0:7}"
  gdal_translate -ot Float64 NETCDF:$infile:mslp -b $band -unscale "mslp_$ym.tif"
  ((band++))
done
echo All done
