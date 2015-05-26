library(FITSio)
library(dplyr)

# Download FITS file containing the 2FGL Catalog from the Fermi Science Support Center (FSSC) website
# File Rev 6, Released 18 May 2015
if (!file.exists("data-raw/gll_psc_v09.fit")) {
        FGL2Url <- "http://fermi.gsfc.nasa.gov/ssc/data/access/lat/2yr_catalog/gll_psc_v09.fit"
        download.file(FGL2Url, destfile = "data-raw/gll_psc_v09.fit", method="curl")
}

# Read the 2FGL FITS file into a data frame
# File Rev 6, Released 18 May 2015
FGL2 <- tbl_df(readFrameFromFITS("data-raw/gll_psc_v09.fit", hdu = 1))
save(FGL2, file = "data/FGL2.rdata", compress = "xz")