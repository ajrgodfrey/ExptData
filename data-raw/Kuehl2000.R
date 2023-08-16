### mostly uncurated data from Kuehl 2000
##     filenames for all data provided in ASCII form by publisher included a - sign, replaced with an _
##   Variable names were in all caps and are converted, perhaps imperfectly

library(dplyr)
library(forcats)
library(janitor)

Datasets = c("EX2-1", "EX2-2", 
"EX2-3", "EX2-4", "Ex2-5", "EX2-6", "EX3-5", 
"Ex3-7", "Ex4-1", "EX4-2", "EX4-3", "Ex4-4", 
"EX5-1", "Ex5-4", "Ex5-6", "Ex5-7", "Ex5-8", 
"EX6-1", "Ex6-10", "Ex6-11", "EX6-2", "Ex6-3", 
"Ex6-4", "Ex6-5", "EX6-6", "Ex6-7", "EX6-8", 
"Ex6-9", "EX7-1", "EX7-2", "EX7-3", "EX7-4", 
"EX7-5", "EX8-1", "EX8-10", "Ex8-11", "EX8-2", 
"Ex8-3", "EX8-4", "EX8-5", "Ex8-6", "Ex8-7", 
"EX8-8", "Ex8-9", "Ex9-1", "Ex9-2", "Ex9-3", 
"EX9-4", 
"EX10-3", "EX10-4", "EX11-6", "EX11-7", "EX12-10", 
"EX12-11", "EX12-12", "Ex13-1", "EX13-10", "EX13-5", 
"Ex13-6", "Ex14-1", "Ex14-6", "Ex14-7", "Ex15-1", 
"Ex15-2", "EX15-3", "EX15-4", "EX15-5", "EX16-1", 
"EX16-2", "EX16-3", "EX16-4", "EX16-5", "EX17-1", 
"EX17-2", "EX17-3", "Ex17-4", 
"Expl2-1", 
"EXPL2-2", "Expl6-3", "Expl6-4", "Expl6-5", "Expl6-6", 
"Expl6-7", "EXPL7-1", "EXPL7-2", "Expl7-3", "EXPL7-5", 
"EXPL8-1", "Expl8-2", "EXPL8-3", "EXPL9-2", 
"Expl11-1", "EXPL11-2", "EXPL12-2", "Expl13-1",
"EXPL13-3", "EXPL13-4", "EXPL14-1", "Expl15-1", "Expl15-2",
"EXPL16-1", "Expl17-1", "Expl17-2", "Expl17-3") 


for(Dataset in Datasets){
DataName = gsub("-", "_", Dataset)
Data = read.csv(paste0("https://R-resources.massey.ac.nz/data/Kuehl2000/", Dataset, ".csv"), stringsAsFactors = TRUE) |>
    clean_names(case="upper_camel") 
assign(paste0("Kuehl_", DataName), Data)
  }

usethis::use_data(Kuehl_EX2_1, overwrite = TRUE)
usethis::use_data(Kuehl_EX2_2, overwrite = TRUE)
usethis::use_data(Kuehl_EX2_3, overwrite = TRUE)
usethis::use_data(Kuehl_EX2_4, overwrite = TRUE)
usethis::use_data(Kuehl_Ex2_5, overwrite = TRUE)
usethis::use_data(Kuehl_EX2_6, overwrite = TRUE)
usethis::use_data(Kuehl_EX3_5, overwrite = TRUE)
usethis::use_data(Kuehl_Ex3_7, overwrite = TRUE)
usethis::use_data(Kuehl_Ex4_1, overwrite = TRUE)
usethis::use_data(Kuehl_EX4_2, overwrite = TRUE)
usethis::use_data(Kuehl_EX4_3, overwrite = TRUE)
usethis::use_data(Kuehl_Ex4_4, overwrite = TRUE)
usethis::use_data(Kuehl_EX5_1, overwrite = TRUE)
usethis::use_data(Kuehl_Ex5_4, overwrite = TRUE)
usethis::use_data(Kuehl_Ex5_6, overwrite = TRUE)
usethis::use_data(Kuehl_Ex5_7, overwrite = TRUE)
usethis::use_data(Kuehl_Ex5_8, overwrite = TRUE)
usethis::use_data(Kuehl_EX6_1, overwrite = TRUE)
usethis::use_data(Kuehl_Ex6_10, overwrite = TRUE)
usethis::use_data(Kuehl_Ex6_11, overwrite = TRUE)
usethis::use_data(Kuehl_EX6_2, overwrite = TRUE)
usethis::use_data(Kuehl_Ex6_3, overwrite = TRUE)
usethis::use_data(Kuehl_Ex6_4, overwrite = TRUE)
usethis::use_data(Kuehl_Ex6_5, overwrite = TRUE)
usethis::use_data(Kuehl_EX6_6, overwrite = TRUE)
usethis::use_data(Kuehl_Ex6_7, overwrite = TRUE)
usethis::use_data(Kuehl_EX6_8, overwrite = TRUE)
usethis::use_data(Kuehl_Ex6_9, overwrite = TRUE)
usethis::use_data(Kuehl_EX7_1, overwrite = TRUE)
usethis::use_data(Kuehl_EX7_2, overwrite = TRUE)
usethis::use_data(Kuehl_EX7_3, overwrite = TRUE)
usethis::use_data(Kuehl_EX7_4, overwrite = TRUE)
usethis::use_data(Kuehl_EX7_5, overwrite = TRUE)
usethis::use_data(Kuehl_EX8_1, overwrite = TRUE)
usethis::use_data(Kuehl_EX8_10, overwrite = TRUE)
usethis::use_data(Kuehl_Ex8_11, overwrite = TRUE)
usethis::use_data(Kuehl_EX8_2, overwrite = TRUE)
usethis::use_data(Kuehl_Ex8_3, overwrite = TRUE)
usethis::use_data(Kuehl_EX8_4, overwrite = TRUE)
usethis::use_data(Kuehl_EX8_5, overwrite = TRUE)
usethis::use_data(Kuehl_Ex8_6, overwrite = TRUE)
usethis::use_data(Kuehl_Ex8_7, overwrite = TRUE)
usethis::use_data(Kuehl_EX8_8, overwrite = TRUE)
usethis::use_data(Kuehl_Ex8_9, overwrite = TRUE)
usethis::use_data(Kuehl_Ex9_1, overwrite = TRUE)
usethis::use_data(Kuehl_Ex9_2, overwrite = TRUE)
usethis::use_data(Kuehl_Ex9_3, overwrite = TRUE)
usethis::use_data(Kuehl_EX9_4, overwrite = TRUE)
usethis::use_data(Kuehl_EX10_3, overwrite = TRUE)
usethis::use_data(Kuehl_EX10_4, overwrite = TRUE)
usethis::use_data(Kuehl_EX11_6, overwrite = TRUE)
usethis::use_data(Kuehl_EX11_7, overwrite = TRUE)
usethis::use_data(Kuehl_EX12_10, overwrite = TRUE)
usethis::use_data(Kuehl_EX12_11, overwrite = TRUE)
usethis::use_data(Kuehl_EX12_12, overwrite = TRUE)
usethis::use_data(Kuehl_Ex13_1, overwrite = TRUE)
usethis::use_data(Kuehl_EX13_10, overwrite = TRUE)
usethis::use_data(Kuehl_EX13_5, overwrite = TRUE)
usethis::use_data(Kuehl_Ex13_6, overwrite = TRUE)
usethis::use_data(Kuehl_Ex14_1, overwrite = TRUE)
usethis::use_data(Kuehl_Ex14_6, overwrite = TRUE)
usethis::use_data(Kuehl_Ex14_7, overwrite = TRUE)
usethis::use_data(Kuehl_Ex15_1, overwrite = TRUE)
usethis::use_data(Kuehl_Ex15_2, overwrite = TRUE)
usethis::use_data(Kuehl_EX15_3, overwrite = TRUE)
usethis::use_data(Kuehl_EX15_4, overwrite = TRUE)
usethis::use_data(Kuehl_EX15_5, overwrite = TRUE)
usethis::use_data(Kuehl_EX16_1, overwrite = TRUE)
usethis::use_data(Kuehl_EX16_2, overwrite = TRUE)
usethis::use_data(Kuehl_EX16_3, overwrite = TRUE)
usethis::use_data(Kuehl_EX16_4, overwrite = TRUE)
usethis::use_data(Kuehl_EX16_5, overwrite = TRUE)
usethis::use_data(Kuehl_EX17_1, overwrite = TRUE)
usethis::use_data(Kuehl_EX17_2, overwrite = TRUE)
usethis::use_data(Kuehl_EX17_3, overwrite = TRUE)
usethis::use_data(Kuehl_Ex17_4, overwrite = TRUE)
usethis::use_data(Kuehl_Expl2_1, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL2_2, overwrite = TRUE)
usethis::use_data(Kuehl_Expl6_3, overwrite = TRUE)
usethis::use_data(Kuehl_Expl6_4, overwrite = TRUE)
usethis::use_data(Kuehl_Expl6_5, overwrite = TRUE)
usethis::use_data(Kuehl_Expl6_6, overwrite = TRUE)
usethis::use_data(Kuehl_Expl6_7, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL7_1, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL7_2, overwrite = TRUE)
usethis::use_data(Kuehl_Expl7_3, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL7_5, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL8_1, overwrite = TRUE)
usethis::use_data(Kuehl_Expl8_2, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL8_3, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL9_2, overwrite = TRUE)
usethis::use_data(Kuehl_Expl11_1, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL11_2, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL12_2, overwrite = TRUE)
usethis::use_data(Kuehl_Expl13_1, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL13_3, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL13_4, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL14_1, overwrite = TRUE)
usethis::use_data(Kuehl_Expl15_1, overwrite = TRUE)
usethis::use_data(Kuehl_Expl15_2, overwrite = TRUE)
usethis::use_data(Kuehl_EXPL16_1, overwrite = TRUE)
usethis::use_data(Kuehl_Expl17_1, overwrite = TRUE)
usethis::use_data(Kuehl_Expl17_2, overwrite = TRUE)
usethis::use_data(Kuehl_Expl17_3, overwrite = TRUE)
