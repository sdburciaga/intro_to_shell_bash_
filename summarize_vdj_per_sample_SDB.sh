#!/bin/sh 

input_file="/home/burciags/data/more_datasets/GSE183051_VDJ_data/contig_annotations"

cd ${input_file}

for i in $(ls ${input_file});

do 
  echo "${i}"
  zcat ${i} | cut -d, -f1 | tail -n+2 | sort | uniq | wc -l
  done
  
  