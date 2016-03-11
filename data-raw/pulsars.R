# Script to read the Public List of LAT Pulsars
# Pablo Saz Parkinson
# 2015-04-21

library(XML)
library(dplyr)

Today <- Sys.Date()
fileUrl <- "https://confluence.slac.stanford.edu/display/GLAMCOG/Public+List+of+LAT-Detected+Gamma-Ray+Pulsars"
filePSR.html <- paste("data-raw/Public_List_of_LAT_Pulsars_",Today,".html", sep="")
#filePSR.rdata <- paste("LATPSRs_",Today,".rdata", sep="")
download.file(fileUrl, destfile = filePSR.html, method = "curl")

filePSR.html <- "data-raw/Public_List_of_LAT_Pulsars_2016-02-22.html"
tmp <- tbl_df(readHTMLTable(filePSR.html, as.data.frame = TRUE, which = 1, stringsAsFactors = FALSE))
npulsars <- dim(tmp)[1]-1
pulsars <- tmp[2:(npulsars+1),]
colnames(pulsars) <- c("PSR", "RAJ_deg", "DECJ_deg", "P_ms", "Edot", "Codes", "Refs")
pulsars$RAJ_deg <- as.numeric(pulsars$RAJ_deg)
pulsars$DECJ_deg <- as.numeric(pulsars$DECJ_deg)
pulsars$P_ms <- as.numeric(pulsars$P_ms)
pulsars$Edot <- as.numeric(pulsars$Edot)
pulsars$date_public <- as.Date("2016-02-22")
rm(tmp)

codes <- tbl_df(readHTMLTable(filePSR.html, as.data.frame = TRUE, which = 2, stringsAsFactors = FALSE))
references <- tbl_df(readHTMLTable(filePSR.html, as.data.frame = TRUE, which = 3, stringsAsFactors = FALSE))

filePSR_old.html <- "data-raw/Public_List_of_LAT_Pulsars_2014-11-06.html"
tmp <- tbl_df(readHTMLTable(filePSR_old.html, as.data.frame = TRUE, which = 1, stringsAsFactors = FALSE))
npulsars_old <- dim(tmp)[1]-1
pulsars_old <- tmp[2:(npulsars_old+1),]
colnames(pulsars_old) <- c("PSR", "RAJ_deg", "DECJ_deg", "P_ms", "Edot", "Codes", "Refs")
pulsars_old$date_public <- as.Date("2014-11-06")

for (i in 1:npulsars) {
        if (sum(pulsars$PSR[i]==pulsars_old$PSR) > 0) {
                pulsars$date_public[i] <- as.Date("2014-11-06")
        } else {
                pulsars$date_public[i] <- as.Date("2016-02-22")
        }
}

# Fix PSR J0740+6620 (previously known as PSR J0742+6620)
pulsars$date_public[pulsars$PSR=="PSR J0740+6620"] <- as.Date("2014-11-06")

#sum(pulsars$date_public=="2014-11-06")
#sum(pulsars$date_public=="2016-02-22")
rm(pulsars_old)

save(pulsars, file = "data/pulsars.rdata", compress = "xz")
