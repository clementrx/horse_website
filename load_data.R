library(googledrive)
library(here)
library(lubridate)

dir.create(here('data'), showWarnings = FALSE)

drive_deauth()
drive_user()

public_file <-  drive_get(as_id("11iHcIJRVJupthQCeGMC0gRMXiBJ634DQ"))

drive_download(public_file, 
               overwrite = TRUE,
               path = here('data',  paste0(gsub('-','', today()),
                                           '_pred_trot_DL.rda')))
load(here::here('data',
  paste0(gsub('-','', today()),
         '_pred_trot_DL.rda')))
