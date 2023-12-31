library(tidyr)
library(dplyr)
library(forcats)

# Table 3.13 Data for the Trout Experiment 
# Hemoglobin (grams per 100 ml) 

Trout = data.frame(T1=c(6.7,7.8,5.5,8.4,7.0,7.8,8.6,7.4,5.8,7.0),
    T2=c(9.9,8.4,10.4,9.3,10.7,11.9,7.1,6.4,8.6,10.6),
    T3=c(10.4,8.1,10.6,8.7,10.7,9.1,8.8,8.1,7.8,8.0),
    T4=c(9.3,9.3,7.2,7.8,9.3,10.2,8.7,8.6,9.3,7.2)
  )  |>
  pivot_longer(T1:T4, values_to="Hemoglobin", names_to="Trough") |>
  mutate(Trough = as_factor(Trough))
#usethis::use_data(Trout, overwrite=TRUE)

# table 7.22 
NorthStar  = read.csv("data-raw/DeanVosseCSV/Manganese.csv") |>
    pivot_longer(A1B1:A3B2, values_to="Manganese", names_to="AB") |>
  separate_wider_position(AB, widths=c(1, A=1,1, B=1), cols_remove=TRUE) |>
  mutate(across(C:B, as_factor))
# The factors and their selected experimental levels were: 
# A: Temperature of the lab. (67.,72.,77.). 
# B: Cleanliness of entrance window seal (clean, one week’s use). 
#C: Placement of sample (sample edge tangential to edge of disk, sample completely covering disk, sample partially covering disk). 
#D: Wear of boron nitride disk (new, one month old). 
#E: Sharpness of counterelectrode tip (newly sharpened, one week’s wear). 
#usethis::use_data(NorthStar, overwrite=TRUE)

# table 7.26
SteelBarCutting = read.csv("data-raw/DeanVosseCSV/SteelBarCutting.csv") |>
  separate_wider_position(ABC, widths=c(A=1, B=1,  C=1), cols_remove=TRUE) |>
    pivot_longer(y1jk1:y1jk4, values_to="CutDiff", names_to="yjk") |>
  separate_wider_position(yjk, widths=c(4, JK=1), cols_remove=TRUE) |>
  mutate(across(A:JK, as_factor))
#usethis::use_data(SteelBarCutting, overwrite=TRUE)

#
HandWheel = read.csv("data-raw/DeanVosseCSV/HandWheel.csv", blank.lines.skip=TRUE) |>
  mutate(across(A:G, ~.*2)) |>
  mutate(across(Block:G, as_factor))
#usethis::use_data(HandWheel, overwrite=TRUE)


# cc57 Table page 
BeefTender = read.csv("data-raw/DeanVosseCSV/Beef.csv", blank.lines.skip=TRUE) |>
  mutate(across(Block:Treatment, as_factor))
#usethis::use_data(BeefTender, overwrite=TRUE)


#
# cc57 Table 4.8a page 135
DairyCow = read.csv("data-raw/DeanVosseCSV/dairy.cow.csv", blank.lines.skip=TRUE) |>
  mutate(across(Cow:Diet, as_factor))
#usethis::use_data(DairyCow, overwrite=TRUE)



# Field expeirment mentioned uses first rep of beans data. Block 2 in DV is A and Block 1 is B for some reason
# cc57 Table 6.3 page 189
# not to be used in this short form

# Table 19.12 has arthritis data
Arthritis = read.csv("data-raw/DeanVosseCSV/Arthritis.csv") 
#usethis::use_data(Arthritis, overwrite=TRUE)
