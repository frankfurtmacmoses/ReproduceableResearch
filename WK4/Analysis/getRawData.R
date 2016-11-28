

temp <- tempfile()

url <-
        "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
download.file(url, temp)

my_file <-
        read.csv(bzfile(temp, "repdata%2Fdata%2FStormData.csv"),
                 stringsAsFactors = F)
unlink(temp)



  
