library(FITSio)
library(dplyr)

# Download FITS file containing the 2FHL Catalog from the Fermi Science Support Center (FSSC) website
if (!file.exists("data-raw/gll_psch_v08.fit")) {
        FHL2Url <- "http://fermi.gsfc.nasa.gov/ssc/data/access/lat/2FHL/gll_psch_v08.fit.tar.gz"
        download.file(FHL2Url, destfile = "data-raw/gll_psch_v08.fit.tar.gz", method="curl")
        untar("data-raw/gll_psch_v08.fit.tar.gz", exdir = "data-raw")
}

# Read the 2FHL FITS file into a data frame
FHL2 <- tbl_df(readFrameFromFITS("data-raw/gll_psch_v08.fit", hdu = 2))
save(FHL2, file = "data/FHL2.rdata", compress = "xz")
