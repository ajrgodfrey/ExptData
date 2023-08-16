library(tidyverse)

Taguchi8 = data.frame(c1=rep(c(-1,1), each=4),  c2=rep(c(-1,1), each=2), c4=c(-1,1)) |>
    mutate(c3=-c1*c2, c5=-c1*c4, c6=-c2*c4, c7=-c3*c4) |>
    select(c1, c2, c3, c4, c5, c6, c7)
usethis::use_data(Taguchi8, overwrite = FALSE)

Taguchi16 = data.frame(c1=rep(c(-1,1), each=8), c2=rep(c(-1,1), each=4),  c4=rep(c(-1,1), each=2), c8=c(-1,1)) |>
    mutate(c3=-c1*c2, c5=-c1*c4, c6=-c2*c4, c7=-c3*c4, c9=-c1*c8,c10=-c2*c8, c11=-c3*c8, c12=-c4*c8, c13=-c5*c8, c14=-c6*c8, c15=-c7*c8) |>
    select(c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15)
usethis::use_data(Taguchi16, overwrite = FALSE)


Std8Runs = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1))) |> 
    mutate(StdOrder=1:8)
usethis::use_data(Std8Runs, overwrite = FALSE)

Std16Runs = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1), D=c(-1,1))) |> 
    mutate(StdOrder=1:16)
usethis::use_data(Std16Runs, overwrite = FALSE)

Std32Runs = data.frame(expand.grid(A=c(-1,1), B=c(-1,1), C=c(-1,1), D=c(-1,1), E=c(-1,1))) |> 
    mutate(StdOrder=1:32)
usethis::use_data(Std32Runs, overwrite = FALSE)


L8 = data.frame(c1=c(-1,1), c2=rep(c(-1,1), each=2), c4=rep(c(-1,1), each=4)) |>
    mutate(c3=c1*c2, c5=c1*c4, c6=c2*c4, c7=c3*c4) |>
    select(c1, c2, c3, c4, c5, c6, c7)
usethis::use_data(L8, overwrite = FALSE)

L16= rbind(L8, L8) |>
    mutate(c8=rep(c(-1,1), each=8), c9=c1*c8, c10=c2*c8, c11=c3*c8, c12=c4*c8, c13=c5*c8, c14=c6*c8, c15=c7*c8)
usethis::use_data(L16, overwrite = FALSE)
 
L9 = data.frame(c1=c(-1,0,1), c2=rep(c(-1,0,1), each=3))

L27 = data.frame(c1=c(-1,0,1), c2=rep(c(-1,0,1), each=3), c4=rep(c(-1,0,1), each=9)) 
