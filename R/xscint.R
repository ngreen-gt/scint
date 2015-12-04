# SCINT: Hexbin plotting FTICRMS CHOFIT (.fit) by score-weighted intensity

# Copyright (2015) Nelson Green: This work is licensed under a 
# Creative Commons Attribution-NonCommercial 4.0 International License
# http://creativecommons.org/licenses/by-nc/4.0/ 

# Author: Nelson Green | ngreen(AT)gatech.edu OR nelson.green(AT)gmail.com

# inputs: Output files (.fit)
# outputs: Hexbin plots, data.frame (table) of results
# Wishlist: Further versions will increase statistical analysis of .fit files
#     with PCA and HCA techniques in R, using hexbins.

# required packages
require(hexbin)
require(dplyr)
require(plotrix)

#User sets working directory
file.dir<-choose.dir(default=getwd(),
                     caption = 'Select CHOFIT output folder')
default.wd<-setwd(file.dir)
my.files<-list.files(pattern = ".fit")
my.data<-lapply(my.files,read.table,skip=64)

for(i in 1:length(all.fit)){
  tmp.file<-read.table(all.fit[i],skip=64)
  return(t)
}

myfunc<-function(x){
  read.table(x,skip=64,stringsAsFactors = F) %>%
}

filenames = list.files(recursive=TRUE,pattern=".fit",full.names=F)
library(plyr)
data = ldply(filenames, myfunc, .id = "type")
data$type <- gsub(".fit", "", data$type)

scint.fun<-function(x){
  substr(basename(xscint),1,nchar(basename(xscint))-4) <-
  read.table(xscint, quote="\"", comment.char="",skip = 64,
             colClasses = c("integer",rep("NULL",3),"numeric",rep("NULL",3),
                            rep("integer",4),rep("NULL",6),rep("integer",2)))
}