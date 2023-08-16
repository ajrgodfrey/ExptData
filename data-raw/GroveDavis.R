library(tidyverse)

source("data-raw/General.R")


# Table 2.3 on p30:
AirBags =  Std8Runs |>
    rename(Speed=A, BagSize=B, VentSize=C) |>
    mutate(
        Resp=c(56.2, 55.6, 61.6, 52.2, 54, 50, 60.3, 51.1)
    )

Tab4.5 = L16.2.15 = data.frame(expand.grid(c1 = c(-1,1), c2 = c(-1,1), c4 = c(-1,1), c8 = c(-1,1))) |>
    mutate(c3=c1*c2, c5=c1*c4, c6=c2*c4, c7=c1*c2*c4, c9=c1*c8, c10=c2*c8, c11 =c1*c2*c8, c12=c4*c8, c13=c1*c4*c8, c14=c2*c4*c8, c15=c1*c2*c4*c8)

# table 5.4 is EngineMapping with  Spark set to 0


# table 5.9 p116 and 5.16 p129

EngineMapping = data.frame(expand.grid(Spark = c(-1,0,1), Torque  = c(-1,0,1), Speed  = c(-1,0,1))) |>
    mutate(Run = 1:27,
        Order = c(1, 3, 7, 9, 19, 21, 25, 27, 14, 5, 23, 11, 17, 13, 15, 2, 20, 8, 26, 4, 22, 6, 24, 10, 16, 12, 18),
        FF = c(4.5, 4.2, 3.7, 7.1, 6.5, 6.4, 9.8, 9.3, 9.1, 8.2, 7.3, 7.2, 12.7, 11.8, 12.0, 17.8, 
          16.9, 16.6, 15.5, 13, 12.5, 22.1, 19.7, 19, 29, 26.1, 25.8),
        NO = c(13, 18, 27, 84, 126, 182, 201, 270, 324, 37, 57, 113, 191, 317, 439,
          433, 598, 696, 77, 115, 219, 242, 422, 654, 528, 801, 1010))



# table 6.8 p154
Tyres = data.frame(RR = c(86.98, 97.2, 105.75, 84.7, 124.5, 126.48, 114.3, 118.9, 134.7, 146.8, 122.58, 103.27, 107.58, 109.3, 110.6, 120.4, 143.7, 132.7, 143.61, 113.99, 121.1, 119.13, 126.4, 121.3, 119.13, 89.35, 75.9),
Load = c(rep(1,4), rep(2,15), rep(3,6), rep(1,2)),
Pressure = c(1,3, rep(2,3), 1,3,2, rep(c(1,3,2,2), 3), 1, rep(2,3), 3, rep(2,2)),
Angle = c(rep(2,11), rep(1,4), rep(3,4), 2,2,3,2,1,2,1,3),
Speed = c(2, 2, 3, 1, 2, 1, 1, 2, 3, 3, 2, 1, 2, 2, 3, 1, 2, 2, 3, 1, 2, 2, 3, 2, 2, 2, 2))



# L12 =

# table 8.1 p202
#TClamp = L12*diag(c(1, -1, -1, -1, -1, -1, 1, 1, -1, -1, -1))
# plus four columns for two responses height and  weld strength

# table 8.6 p210
TClamp2 =  data.frame(expand.grid(HE = c(-1,1), W = c(-1,1),A = c(-1,1))) |>
    mutate(T=-A*W, S=-A*HE, c6=-W*HE, HO=A*W*HE,
        Height=30+c(7.03, 6.68, 6.8, 6.45, 6.95, 6.61, 6.9, 6.5),
        SD = c(0.42, 0.55, 0.50, 0.49, 0.41, 0.49, 0.63, 0.72))



# raw TClamp data is in table A8.1 p220-221


# table 9.2 p225
Seatbelts = Taguchi16 |>
    rename(F=c1, C=c2, B=c3, H=c4, A=c5, E=c6, G=c7, D=c8) |>
 mutate(Nn_l=c(3408, 3403, 2780, 4608, 5274, 3682, 2913, 2961, 3453, 4450, 3674, 3517, 3886, 3758, 2757, 4504)/1000,
      N_m=c(3044, 2915, 3067, 3984, 4556, 3627, 2385, 2647, 3500, 4398, 3384, 3538, 4024, 3580, 3206, 4076)/1000)
#' A is belt webbing stiffness
#' B is belt webbing friction,
#' C is upper anchorage stiffness,
#' D is tongue friction characteristic,
#' E is buckle cable stiffness,
#' F is lower anchorage position,
#' G is lap force liminiting device,
#' H is front seat back bolster.
#' N_l/N_m  least/most favourable noise settings. (Outer array).


# table 10.1 p253
# table A10.1 p292 has some bad data
FuelTank = Taguchi16 |>
    rename(D=c1, E=c2, C=c4, B=c8, F=c10, A=c15) |>
    mutate(Strength =c(4.86, 5.86, 3.5, 2.18, 1.35, 0.39, 4.03, 5.62, 5.15, 4.79, 2.62, 2.33, 5.96, 5.34, 2.73, 2.75),
      SeamWidth=c(0.93, 1.77, 4.24, 4.01, 0.16, 0, 4.58, 3.34, 1.34, 2.46, 3.84, 4.21, 2.1, 1.89, 4.43, 4.35))
# have not obtained two columns for log(x)

#' A weld time (3 or 5 cycles),
#' B is cool time (2 or 3 cycles), 
#' C is weld current (14.4 or 18.7 kA),
#' D is cradle speed (2.3 and 2.5 m/min),
#' E is wheel condition (old / new),
#' F is wheel clamping pressure (3 or 5 bars)



# p176 has L18
# p78 has L12
