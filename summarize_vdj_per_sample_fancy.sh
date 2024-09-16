#!/bin/sh

file_loc='/home/burciags/data/more_datasets/GSE183051_VDJ_data/contig_annotations/'

for sample in $(ls -1 ${file_loc}*.csv.gz);
do
  echo "Running file $(basename ${sample})"
  echo "  Total cells: \
        $(zcat ${sample} | cut -d, -f1 | tail -n+2 | sort | uniq | wc -l)"
done

echo "Script is done running, goodbye!"


#-1 makes it into one column per line.