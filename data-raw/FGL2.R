library(FITSio)
library(dplyr)

# Download FITS file containing the 2FGL Catalog from the Fermi Science Support Center (FSSC) website
if (!file.exists("data-raw/gll_psc_v08.fit")) {
        FGL2Url <- "http://fermi.gsfc.nasa.gov/ssc/data/access/lat/2yr_catalog/gll_psc_v08.fit"
        download.file(FGL2Url, destfile = "data-raw/gll_psc_v08.fit", method="curl")
}

# Read the 2FGL FITS file into a data frame
FGL2 <- tbl_df(readFrameFromFITS("data-raw/gll_psc_v08.fit", hdu = 1))
save(FGL2, file = "data/FGL2.rdata", compress = "xz")