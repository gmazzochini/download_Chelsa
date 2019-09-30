file_path <- ""  #enter the path location in your computer to store the rasters

files_urls<-paste0("https://www.wsl.ch/lud/chelsa/data/timeseries/prec/CHELSA_prec_",
                    apply(expand.grid(1981:2013,sprintf("%02s", 1:12))[,1:2],1, function(x) paste(x, collapse="_")),
                    "_V1.2.1.tif")

for(i in 1:length(files_urls)){
  download.file(files_urls[i],
                destfile = paste("file_path",substring(files_urls[i],52), sep=""))
}
