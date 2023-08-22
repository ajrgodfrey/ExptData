### Data from Mead 1988
##     Abrasion, Aerosol, Amphibians, Bacteria, Bioassay, BollWeevils, Broilers, BrusselSprouts, CabbageFlies, Cowpeas, Detergent, Frogs_Toads,
# GLCompetition, Herbicide, Lettuce_Potash, Lettuces, Maize, PainRelief, peppers, PigFeed, RatGrowth, Rheumatism, RiceSpacing, Salmonella, 
# Tomato, Turnip, VACCINE, WaterOrganisms,


source("data-raw/General.R")

library(dplyr)
library(forcats)

Datasets = c("Aerosol", "Amphibians", "Bacteria", "Bioassay", "BollWeevils", "Broilers", "BrusselSprouts", "CabbageFlies", "Cowpeas", "Detergent", "Frogs_Toads", "Herbicide", "Lettuce_Potash", "Lettuces", "Maize", "PainRelief", "Peppers", "PigFeed", "RatGrowth", "Rheumatism", "RiceSpacing", "Salmonella", "Tomato", "Turnip", "Vaccine", "WaterOrganisms")


for(Dataset in Datasets){
  assign(Dataset, read.csv(paste0("https://R-resources.massey.ac.nz/data/Mead1988/", Dataset, ".csv"), stringsAsFactors = TRUE))
  }



# 13.28 p380
# possible outliers and transformation warranted
Abrasion  = Std32Runs |>
    mutate(Score = c(1.4, 1.2, 3.6, 1.2, 1.5, 1.4, 1.5, 1.6, 5, 9, 12, 5.4, 4.2, 4.4, 9.3, 2.8, 1.7, 2, 3.1, 1.2, 1.9, 1.2, 
          1, 1.8, 9.5, 5.9, 12.6, 6.3, 8, 4.2, 7.7, 6)) |>
    rename(Method=A, Composition=B, CTemp=C, Type=D, Size=E)
#usethis::use_data(Abrasion, overwrite = TRUE)

# Table 12.18 p341
Bioassay= Bioassay |>
    pivot_longer(I:V, names_to="Block", values_to="Yield") |>
    mutate(across(Drug:Block, as.factor))
#usethis::use_data(Bioassay, overwrite = TRUE)


# Table 11.22 p301
BollWeevils = BollWeevils |>
    pivot_longer(None_1:AB_2, names_to="Trt", values_to="Count") |>
    separate_wider_delim(Trt, "_", names=c("Treatment", "Rep")) |>
    mutate(A = str_detect(Treatment, "A"), B = str_detect(Treatment, "B")) |>
    mutate(across(A:B, ~.*2-1)) |>
    mutate(across(A:B, as.factor)) |>
    select(-Treatment)
#usethis::use_data(BollWeevils, overwrite = TRUE)


CabbageFlies = CabbageFlies |> mutate(across(!Eggs, as_factor))
#usethis::use_data(CabbageFlies, overwrite = TRUE)


# Table 14.14 p417
Cowpeas = Cowpeas |>
    pivot_longer(I:V, names_to="Block", values_to="Yield") |>
    mutate(across(Cowpea:Block, as.factor))
#usethis::use_data(Cowpeas, overwrite = TRUE)

Detergent = Detergent |> mutate(across(!Plates, as_factor))
#usethis::use_data(Detergent, overwrite = TRUE)


#'# table 14.15 p418 split plot in P
P0 = c(20, 14, 24, 18, 27, 24, 33, 26)
P1 = c(34, 29, 37, 32, 31, 25, 37, 29)
GLCompetition = Std16Runs |>
    mutate(Yield=c(P0,P1)) |>
    rename(Legume=A, Grass=B, Cutting=C, Proportion=D)
#usethis::use_data(GLCompetition, overwrite = TRUE)

# fig16.19 p511
Lettuce_Potash = Lettuce_Potash |>
    mutate(across(Block:K, as.factor))
#usethis::use_data(Lettuce_Potash, overwrite = TRUE)


PainRelief = PainRelief |> mutate(across(!Hours, as_factor))

Peppers =  Peppers |> mutate(Block = as_factor(Block), Year = as_factor(Year))
#usethis::use_data(PainRelief, overwrite = TRUE)
#usethis::use_data(Peppers, overwrite = TRUE)

PigFeed = PigFeed |>
    pivot_longer(I:IV, names_to="Block", values_to="Gain") |>
    mutate(across(Treatment:Block, as.factor))
#usethis::use_data(PigFeed, overwrite = TRUE)


# Table 8.14 p212 N.B. Gaps in the table occur where patients were not available for observation at the relevant time.
Rheumatism = Rheumatism |>
    pivot_longer(W2:W8, names_to="Week", values_to="Score") |>
    mutate(across(Patient:Week, as.factor))
#usethis::use_data(Rheumatism, overwrite = TRUE)

# Table 2.2. p13  Yields of rice grain (kg per plot).
RiceSpacing = RiceSpacing |>
    pivot_longer(I:IV, names_to="Block", values_to="Yield") |>
    mutate(across(Block, as.factor))
#usethis::use_data(RiceSpacing, overwrite = TRUE)

Turnip = Turnip |> mutate(SpacingF = as_factor(Spacing), DensityF = as_factor(Density))
#usethis::use_data(Turnip, overwrite = TRUE)

Vaccine = Vaccine |> mutate(Batch= as_factor(Batch))
#usethis::use_data(Vaccine, overwrite = TRUE)


### second round of manual entries
# Table 12.22 p344
Aerosol = Aerosol |>
    pivot_longer(A1:C2, names_to="Trt", values_to="What") |>
 separate_wider_position(Trt, c(Treatment=1, Rep=1))
    usethis::use_data(Aerosol, overwrite = TRUE)


# Table 13.2 p351
# what is the response
Amphibians = Amphibians |>
    select(Combination:Effect)
usethis::use_data(Amphibians, overwrite = TRUE)


# Table 10.17 p271
usethis::use_data(Bacteria, overwrite = TRUE)

# Table 11.23  p302
# what is the response?
Broilers = Broilers |>
    pivot_longer(Week1:Week2, names_to="Week", values_to="What")
usethis::use_data(Broilers, overwrite = TRUE)

# Table 10.16 p270
usethis::use_data(BrusselSprouts, overwrite = TRUE)

# Table 3.2 p39 N.B. Compare with similar table later on.
usethis::use_data(Frogs_Toads, overwrite = TRUE)

# Table 10.18 p273
# what is response
Herbicide = Herbicide |>
    pivot_longer(X1:X11, names_to="Treatment", names_prefix = "X", values_to="Count") |>
    mutate(across(Treatment, as.factor))
usethis::use_data(Herbicide, overwrite = TRUE)

# Table 15.18 p468
usethis::use_data(Lettuces, overwrite = TRUE)


# Table 13.9 maize p358
# variety a/b infestation y/n fertiliser (4) (0/P/PM/PNK and two blocks
# Note: variety (a/b), infestation (y/n), fertilizer (4) (O/P/PM/PNK) and two blocks
Maize = Maize |>
pivot_longer(Rep1:Rep2, names_to="Block", names_prefix="Rep", values_to="Yield") |>
    mutate(across(Block, as.factor))
usethis::use_data(Maize, overwrite = TRUE)


# Table 14.11 p411
RatGrowth = RatGrowth |>
    pivot_longer(y0:y4, names_to="Time", values_to="What", names_prefix="y")
usethis::use_data(RatGrowth, overwrite = TRUE)


# Table 13.15 p369 
usethis::use_data(Salmonella, overwrite = TRUE)

# 4.1 tomato p46
# Treatment definitions were as follows: A: early spray 75 p.p.m; B: early spray 150 p.p.m; C: late spray 75 p.p.m; D: late spray 150 p.p.m; E: control 
# looks like a Latin square with an extra row
# = Tomato  |>
#    mutate(across(Row:Treatment, as.factor))
#usethis::use_data(Tomato, overwrite = TRUE)

# Table 11.24 p303
WaterOrganisms = WaterOrganisms |>
  pivot_longer(May:Nov, names_to="Month", values_to="Count")
# need to split first column and give it names
usethis::use_data(WaterOrganisms, overwrite = TRUE)
