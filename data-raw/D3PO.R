# The Denoised, Deconvolved, and Decomposed Fermi Gamma-ray Sky
# Selig, M., Vacca, V., Oppermann, N., and Ensslin, T. A., 
# Astronomy & Astrophysics, Volume 581, A126 (2015)
library(FITSio)
library(dplyr)

# Read the D3PO FITS file into a data frame
DF1 <- tbl_df(readFrameFromFITS("data-raw/D3PO_catalog_1.fits", hdu = 1))
DF1 <- rename(DF1, GLON = GLON.0...360..,
               GLAT = GLAT..90...90..)
save(DF1, file = "data/DF1.rdata", compress = "xz")
