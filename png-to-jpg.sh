#!/bin/bash

for file in *.png
do
  convert $file $(basename $file .png).jpg
done
