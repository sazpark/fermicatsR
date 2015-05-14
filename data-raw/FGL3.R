library(FITSio)
library(dplyr)

# Download FITS file containing the 3FGL Catalog from the Fermi Science Support Center (FSSC) website
if (!file.exists("data-raw/gll_psc_v15.fit")) {
        FGL3Url <- "http://fermi.gsfc.nasa.gov/ssc/data/access/lat/4yr_catalog/gll_psc_v15.fit"
        download.file(FGL3Url, destfile = "data-raw/gll_psc_v15.fit", method="curl")
}

# Read the 3FGL FITS file into a data frame
FGL3 <- tbl_df(readFrameFromFITS("data-raw/gll_psc_v15.fit", hdu = 1))
save(FGL3, file = "data/FGL3.rdata", compress = "xz")