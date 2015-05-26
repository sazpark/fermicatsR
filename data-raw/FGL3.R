library(FITSio)
library(dplyr)

# Download FITS file containing the 3FGL Catalog from the Fermi Science Support Center (FSSC) website
# File Rev 3, Released 18 May 2015
if (!file.exists("data-raw/gll_psc_v16.fit")) {
        FGL3Url <- "http://fermi.gsfc.nasa.gov/ssc/data/access/lat/4yr_catalog/gll_psc_v16.fit"
        download.file(FGL3Url, destfile = "data-raw/gll_psc_v16.fit", method="curl")
}

# Read the 3FGL FITS file into a data frame
# File Rev 3, Released 18 May 2015
FGL3 <- tbl_df(readFrameFromFITS("data-raw/gll_psc_v16.fit", hdu = 1))
save(FGL3, file = "data/FGL3.rdata", compress = "xz")