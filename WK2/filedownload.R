require(dplyr)

file_url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
temp_file_name <- basename(file_url)
download.file(file_url,temp_file_name)
my.csv.file <- unzip(temp_file_name) %>% read.csv(stringsAsFactors = F) %>% mutate(date = as.POSIXct(date, format="%Y-%m-%d"))
file.remove(temp_file_name)


#OR
#To Do:
# temp_dir <- tempdir()
# temp.file <- tempfile(tmpdir = temp_dir,fileext = ".zip")
# download.file(file_url,temp.file)
# You can either grab the file and unzip but there is challenges here for now
#e.i its not seeing the file.
# file.grab <- paste(temp_dir,"/",temp.file,sep = "")
#unzip(file.grab)

# This option below work as alternative to above:
# get the name of the first file in the zip archive
#fname = unzip(tf, list=TRUE)$Name[1]
# unzip the file to the temporary directory
#unzip(tf, files=fname, exdir=td, overwrite=TRUE)
# fpath is the full path to the extracted file
#fpath = file.path(td, fname)


