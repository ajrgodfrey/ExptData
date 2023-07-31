### Data from Mead 1988
##     CabbageFlies, Detergent, PainRelief, Peppers, Turnip, Vaccine


library(dplyr)

Datasets = c("CabbageFlies", "Detergent", "PainRelief", "Peppers", "Turnip", "Vaccine")

for(Dataset in Datasets){
  assign(Dataset, read.csv(paste0("https://R-resources.massey.ac.nz/data/Mead1988/", Dataset, ".csv"), stringsAsFactors = TRUE))
  }

# now for extra manipulations:

Peppers =  Peppers |> mutate(Block=as.factor(Block), Year = as.factor(Year))


## and include in data folder
usethis::use_data(CabbageFlies, overwrite = TRUE)
usethis::use_data(Detergent, overwrite = TRUE)
usethis::use_data(PainRelief, overwrite = TRUE)
usethis::use_data(Peppers, overwrite = TRUE)
usethis::use_data(Turnip, overwrite = TRUE)
usethis::use_data(Vaccine, overwrite = TRUE)
