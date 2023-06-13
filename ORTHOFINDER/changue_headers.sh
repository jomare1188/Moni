
prefix=$(ls | grep genepred.fasta | cut -f1 -d.)
for i in $prefix; do sed  "s/^>/>${i}_/g" $i.emapper.genepred.fasta > ${i}_prefix.fasta; done
