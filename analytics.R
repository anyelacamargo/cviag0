library(qtl);
source('rf.R');
#library(randomForest);
library(gclus);


readGeno()
{
  geno_raw = read.table('cviag0_geno.csv', header=T, sep=',');
  geno_coor = read.table('marker_position.csv', header=T, sep=',');  
  geno_data = merge(geno_coor, geno_raw, by.x='marker', by.y='Markers');
  return(geno_data);
}

read_pheno()
{
  pheno_raw = read.table('cviago_pheno.csv', header=T, sep=',')
  
}