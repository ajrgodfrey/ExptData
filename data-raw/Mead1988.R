### Data from Mead 1988
##     CabbageFlies, Detergent, PainRelief, Peppers, Turnip, Vaccine


library(dplyr)
library(forcats)

Datasets = c("CabbageFlies", "Detergent", "PainRelief", "Peppers", "Turnip", "Vaccine")

for(Dataset in Datasets){
  assign(Dataset, read.csv(paste0("https://R-resources.massey.ac.nz/data/Mead1988/", Dataset, ".csv"), stringsAsFactors = TRUE))
  }

# now for extra manipulations:

CabbageFlies = CabbageFlies |> mutate(across(!Eggs, as_factor))
Detergent = Detergent |> mutate(across(!Plates, as_factor))
PainRelief = PainRelief |> mutate(across(!Hours, as_factor))
Peppers =  Peppers |> mutate(Block = as_factor(Block), Year = as_factor(Year))
Turnip = Turnip |> mutate(SpacingF = as_factor(Spacing), DensityF = as_factor(Density))
Vaccine = Vaccine |> mutate(Batch= as_factor(Batch))

## and include in data folder
usethis::use_data(CabbageFlies, overwrite = TRUE)
usethis::use_data(Detergent, overwrite = TRUE)
usethis::use_data(PainRelief, overwrite = TRUE)
usethis::use_data(Peppers, overwrite = TRUE)
usethis::use_data(Turnip, overwrite = TRUE)
usethis::use_data(Vaccine, overwrite = TRUE)
