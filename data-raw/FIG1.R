# Script to read the 1FIG Catalog 
# Pablo Saz Parkinson
# 2016-03-09

# Read the ascii file containing main results into a data frame
FIG1 <- tbl_df(read.table("data-raw/apj522086t3t7_asscii.txt", header = TRUE))
FIG1$Source_Name = gsub("1FIGJ", "1FIG J", FIG1$Source_Name)
FIG1$ASSOC_3FGL = gsub("3FGL", "3FGL ", FIG1$ASSOC_3FGL)

save(FIG1, file = "data/FIG1.rdata", compress = "xz")
