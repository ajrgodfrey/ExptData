#' @source Bisgaard, S. and Fuller, H.T. (1994) "Quality Quandaries: Analysis of Factorial Experiments with Defects or Defectives as the Response." \emph{Quality Engineering} \bf{7}(2), pp429-443.          https://doi.org/10.1080/08982119408918794    

#' Data found in Table 2 on page 436.
BF94_Tab2 = Std16Runs |> 
    mutate(Prop =c(0.958,1,0.977,0.775,0.958,0.958,0.813,0.906,0.679,0.781,1,0.896,0.958,0.818,0.841,0.955),
      E=C*D, F=B*D, G=B*C, H=A*C, J=A*B, K=A*B*C)

# Data from Table 3 on page 440   
BF94_Tab3 = Std16Runs |>
    mutate(Count = c(56,17,2,4,3,4,50,2,1,0,3,12,3,4,0,0),
      E=B*D   , F=B*C*D   , G=A*C   , H=A*C*D   , J=A*B   , BG=B*G)

