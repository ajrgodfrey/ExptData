library(dplyr)
library(forcats)

Std8Runs = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1))) |> 
    mutate(StdOrder=1:8)
usethis::use_data(Std8Runs, overwrite = TRUE)

Std16Runs = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1), D=c(-1,1))) |> 
    mutate(StdOrder=1:16)
usethis::use_data(Std16Runs, overwrite = TRUE)

Std32Runs = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1), D=c(-1,1), E=c(-1,1))) |> 
    mutate(StdOrder=1:32)
usethis::use_data(Std32Runs, overwrite = TRUE)

# https://doi.org/10.1080/08982119708919097    
GrandmasCake  = Std8Runs |> 
   mutate(RunOrder = c(2,4,1,4,2,1,3,3),
      ABC=A*B*C, Block=factor(ABC, levels=c("I", "II")), 
      Rating = c(2.1,4.0,2.9,2.1,4.1,5.8,3.0,6.9)) |>
    select(-ABC) |>
rename(Egg=A, Sugar=B, Flour=C)
usethis::use_data(GrandmasCake , overwrite = TRUE)

# Taguchi and Wu in Bisgaard and Sutherlan
# https://doi.org/10.1081/QEN-120020782        
InaTile = data.frame(expand.grid(D=c(-1,1), B=c(-1,1), A=c(-1,1), Location=c("Inner", "Outer"))) |>
  mutate(StdOrder=c(1:8,1:8), F_c=D*B, E_c=D*A, C=B*A, G=D*B*A, E=-1*E_c, F=-1*F_c,
    Defects = c(16, 17, 12, 6, 6, 68, 42, 26, 47, 41, 20, 28, 52, 100, 80, 100))
# Factors Low level High level
# A: content of lime 5% 1%
# B: fineness of additive Coarser Finer
# C: content of agalmatolite 43% 53%
# D: kind of agalmatolite Existing New
# -E: raw materials charging quantity 1200kg 1300kg
# -F: content of waste return 4% 0%
# G: content of feldspar 0% 5%
usethis::use_data(InaTile, overwrite = TRUE)

# LawsonGatlin2006BadValues_t1
# https://doi.org/10.1080/08982110600846531   
VoidCount = Std16Runs |> 
    mutate(E=A*B*C, F=B*C*D, G=A*C*D, H=A*B*D, I=A*B*C*D, J=A*B, K=A*C,
      Count = c(31, 48, 43, 32, 54, 52, 60, 34, 47, 43, 30, 26, 67, 49, 80, 41))
usethis::use_data(VoidCount, overwrite = TRUE)

# FreemanEtAl2013PlanningExperiments -Table 4
# https://doi.org/10.1080/08982112.2013.817013    
Ethanol = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1))) |> 
    mutate(StdOrder=1:8, D=A*B, E=A*C, F=B*C,
          Yield = c(0.712, 0.712, 0.317, 0.32, 0.325, 0.332, NA, 0.68)) |>
    rename(Rf=A, Tr=B, TG1=C, TG2=D, Rpf=E, RR=F)
usethis::use_data(Ethanol, overwrite = TRUE)

# Bisgaard 4 level factor
# 
Lenses = Std16Runs |>
    mutate(Type = as_factor(paste0(A,B)),
      Nondefectives = c(48, 36, 45, 60, 55, 24, 41, 63, 42, 64, 57, 46, 54, 66, 52, 50)) |>
    rename(Agitation=C, Temp=D)
levels(Lenses$Type) = as.character(c(1,3,2,4))
usethis::use_data(Lenses, overwrite = TRUE)
    
# Drilling @{Vining2010TAResidualPlots,
#' 2^4 factorial experiment that studies the effects of drill load (factor A), flow rate (factor B), rotational speed (factor C), and type of mud (factor D) 
#' on the advance rate for an oil drill.
# https://doi.org/10.1080/08982112.2011.535696    
Drilling = Std16Runs |>
    mutate(Y=c(1.68, 1.98, 3.28, 3.44, 4.98, 5.7, 9.97, 9.07, 2.07, 2.44, 4.09, 4.53, 7.77, 9.43, 11.75, 16.3)) |>
    rename(Load=A, Flow=B, Speed=C, Type=D)
usethis::use_data(Drilling, overwrite = TRUE)

#  BisgaardEtAl2004QQNotAll
# https://doi.org/10.1081/QEN-200029007    
Washing  = Std16Runs |>
    mutate(Impurity = c(4.2, 2.7, 1.4, 1.3, 3.3, 3.5, 1.3, 1.9, 2.2, 3.1, 4, 4.1, 5, 3, 2.2, 2.6),
      Indicator = c(0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)) |>
    rename(FirstWash=A, Boiling=B, FinalWash=C, Solvent=D)
usethis::use_data(Washing , overwrite = TRUE)
