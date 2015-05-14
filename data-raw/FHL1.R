library(FITSio)
library(dplyr)

# Download FITS file containing the 1FHL Catalog from the Fermi Science Support Center (FSSC) website
if (!file.exists("data-raw/gll_psch_v07.fit")) {
        FHL1Url <- "http://fermi.gsfc.nasa.gov/ssc/data/access/lat/1FHL/gll_psch_v07.fit"
        download.file(FHL1Url, destfile = "data-raw/gll_psch_v07.fit", method="curl")
}

# Read the 1FGL FITS file into a data frame
FHL1 <- tbl_df(readFrameFromFITS("data-raw/gll_psch_v07.fit", hdu = 1))
save(FHL1, file = "data/FHL1.rdata", compress = "xz")
