### Data from Mead 1988
##     Abrasion, CabbageFlies, Detergent, GLCompetition, PainRelief, Peppers, Turnip, Vaccine

source("data-raw/General.R")

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

# 13.28 p380
# possible outliers and transformation warranted
Abrasion  = Std32Runs |>
    mutate(Score = c(1.4, 1.2, 3.6, 1.2, 1.5, 1.4, 1.5, 1.6, 5, 9, 12, 5.4, 4.2, 4.4, 9.3, 2.8, 1.7, 2, 3.1, 1.2, 1.9, 1.2, 
          1, 1.8, 9.5, 5.9, 12.6, 6.3, 8, 4.2, 7.7, 6)) |>
    rename(Method=A, Composition=B, CTemp=C, Type=D, Size=E)
usethis::use_data(Abrasion, overwrite = TRUE)

# table 14.15 p418 split plot in P
P0 = c(20, 14, 24, 18, 27, 24, 33, 26)
P1 = c(34, 29, 37, 32, 31, 25, 37, 29)
GLCompetition = Std16Runs |>
    mutate(Yield=c(P0,P1)) |>
    rename(Legume=A, Grass=B, Cutting=C, Proportion=D)
usethis::use_data(GLCompetition, overwrite = TRUE)

