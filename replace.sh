#!/bin/sh

source=$1
png_files=( p1.449eb320.png p2_2.a04be0e1.png ray_pr.d142a61e.png rebase_i.e3672a3c.png )
for i in "${png_files[@]}"
do
  echo $i
  escaped="${i//\./\\.}"
  # echo $escaped 
  echo "s/t\.p\+\"static\/media\/${escaped}/" 
  sed -i E "s/t\.p\+\"static\/media\/${escaped}/t\.p\+\"\.\.\/static\/media\/${escaped}/" $source
done
