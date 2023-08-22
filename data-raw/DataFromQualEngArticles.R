library(dplyr)
library(forcats)

source("data-raw/General.R")


#' @source Bisgaard, S. and Fuller, H.T. (1994) "Quality Quandaries: Analysis of Factorial Experiments with Defects or Defectives as the Response." \emph{Quality Engineering} \bf{7}(2), pp429-443.          https://doi.org/10.1080/08982119408918794    
#' Data found in Table 2 on page 436.
BF94_Tab2 = Std16Runs |> 
    mutate(Prop =c(0.958,1,0.977,0.775,0.958,0.958,0.813,0.906,0.679,0.781,1,0.896,0.958,0.818,0.841,0.955),
      E=C*D, F=B*D, G=B*C, H=A*C, J=A*B, K=A*B*C)
#usethis::use_data(BF94_Tab2, overwrite = TRUE)
#' Data from Table 3 on page 440   
BF94_Tab3 = Std16Runs |>
    mutate(Count = c(56,17,2,4,3,4,50,2,1,0,3,12,3,4,0,0),
      E=B*D   , F=B*C*D   , G=A*C   , H=A*C*D   , J=A*B   , BG=B*G)
#usethis::use_data(BF94_Tab3, overwrite = TRUE)

# https://doi.org/10.1080/08982119708919097    
GrandmasCake  = Std8Runs |> 
   mutate(RunOrder = c(2,4,1,4,2,1,3,3),
      ABC=A*B*C, Block=factor(ABC, levels=c("I", "II")), 
      Rating = c(2.1,4.0,2.9,2.1,4.1,5.8,3.0,6.9)) |>
    select(-ABC) |>
rename(Egg=A, Sugar=B, Flour=C)
#usethis::use_data(GrandmasCake , overwrite = TRUE)

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
#usethis::use_data(InaTile, overwrite = TRUE)

# LawsonGatlin2006BadValues_t1
# https://doi.org/10.1080/08982110600846531   
VoidCount = Std16Runs |> 
    mutate(E=A*B*C, F=B*C*D, G=A*C*D, H=A*B*D, I=A*B*C*D, J=A*B, K=A*C,
      Count = c(31, 48, 43, 32, 54, 52, 60, 34, 47, 43, 30, 26, 67, 49, 80, 41))
#usethis::use_data(VoidCount, overwrite = TRUE)

# FreemanEtAl2013PlanningExperiments -Table 4
# https://doi.org/10.1080/08982112.2013.817013    
Ethanol = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1))) |> 
    mutate(StdOrder=1:8, D=A*B, E=A*C, F=B*C,
          Yield = c(0.712, 0.712, 0.317, 0.32, 0.325, 0.332, NA, 0.68)) |>
    rename(Rf=A, Tr=B, TG1=C, TG2=D, Rpf=E, RR=F)
#usethis::use_data(Ethanol, overwrite = TRUE)

# Bisgaard 4 level factor
Lenses = Std16Runs |>
    mutate(Type = as_factor(paste0(A,B)),
      Nondefectives = c(48, 36, 45, 60, 55, 24, 41, 63, 42, 64, 57, 46, 54, 66, 52, 50)) |>
    rename(Agitation=C, Temp=D)
levels(Lenses$Type) = as.character(c(1,3,2,4))
#usethis::use_data(Lenses, overwrite = TRUE)
    
# Drilling @{Vining2010TAResidualPlots,
#' 2^4 factorial experiment that studies the effects of drill load (factor A), flow rate (factor B), rotational speed (factor C), and type of mud (factor D) 
#' on the advance rate for an oil drill.
# https://doi.org/10.1080/08982112.2011.535696    
Drilling = Std16Runs |>
    mutate(Y=c(1.68, 1.98, 3.28, 3.44, 4.98, 5.7, 9.97, 9.07, 2.07, 2.44, 4.09, 4.53, 7.77, 9.43, 11.75, 16.3)) |>
    rename(Load=A, Flow=B, Speed=C, Type=D)
#usethis::use_data(Drilling, overwrite = TRUE)

#  BisgaardEtAl2004QQNotAll
# https://doi.org/10.1081/QEN-200029007    
Washing  = Std16Runs |>
    mutate(Impurity = c(4.2, 2.7, 1.4, 1.3, 3.3, 3.5, 1.3, 1.9, 2.2, 3.1, 4, 4.1, 5, 3, 2.2, 2.6),
      Indicator = c(0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)) |>
    rename(FirstWash=A, Boiling=B, FinalWash=C, Solvent=D)
#usethis::use_data(Washing, overwrite = TRUE)

# used a lot See R178 and below
# https://doi.org/10.1080/08982110108918680
# https://doi.org/10.1080/08982112.2016.1243248 
CakeMix = read.csv("https://R-Resources.massey.ac.nz/data/BHH2005/prb1305.csv") |>
# data(BHH2_prb1305, package="ExptData") |>
    mutate(Recipe = as.factor(2 + 0.5*(S+1) + F + 2*(E+1))) |>  
    mutate(Check=F*S*E*T*t) |> filter(Check!=0) |> select(-run, -Check) |>
    rename(Flour=F, Shortening=S, Egg=E)
#usethis::use_data(CakeMix, overwrite = TRUE)
