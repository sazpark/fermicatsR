library(FITSio)
library(dplyr)

# Download FITS file containing the 1FGL Catalog from the Fermi Science Support Center (FSSC) website
# File Rev 3, Released 9 February 2010
if (!file.exists("data-raw/gll_psc_v03.fit")) {
        FGL1Url <- "http://fermi.gsfc.nasa.gov/ssc/data/access/lat/1yr_catalog/gll_psc_v03.fit"
        download.file(FGL1Url, destfile = "data-raw/gll_psc_v03.fit", method="curl")
}

# Read the 1FGL FITS file into a data frame
# File Rev 3, Released 9 February 2010
FGL1 <- tbl_df(readFrameFromFITS("data-raw/gll_psc_v03.fit", hdu = 1))
save(FGL1, file = "data/FGL1.rdata", compress = "xz")
