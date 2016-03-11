library(FITSio)
library(dplyr)

# Read the 3LAC data files into a data frame
LAC3_LO <- tbl_df(read.csv("data-raw/3LAC_LO.txt"))
LAC3_LO <- select(LAC3_LO, -RECNO) # remove RECNO
LAC3_HI <- tbl_df(read.csv("data-raw/3LAC_HI.txt"))
LAC3_HI <- select(LAC3_HI, -RECNO) # remove RECNO
                  
save(LAC3_LO, file = "data/LAC3_LO.rdata", compress = "xz")
save(LAC3_HI, file = "data/LAC3_HI.rdata", compress = "xz")
