# Montgomery SQC book 6th edition

#' "Orthogonal design for process optimisation and its application in plasma etching", \emph{Solid State Technology}, May 1987, p127-132.

Table 13.15 p580

Plasma1 = Std16Runs |>
    rename(Gap=A, Pressure=B, C2F6Flow=C, Power=D) |>
    mutate(EtchRate = c(550, 669, 604, 650, 633, 642, 601, 635, 1037, 749, 1052, 868, 1075, 860, 1063, 729)

# used pseudo error term in ANOVA


Plasma_cp = data.frame(Gap=0, Pressure=0, C2F6Flow=0, Power=0,
      EtchRate = c(706, 764, 780, 761)

Plasma2 = rbind(Plasma1, Plasma_cp)


# table 14.1 p607
# Plasma3 = 




Table 13.24 = 8.10 in Mont_DAE book.

Tab13E4a = Std8Runs |>
    mutate(D=A*B*C,
      Resistivity = c(33.2, 4.6, 31.2, 9.6, 40.6, 162.4, 39.4, 158.6))
Tab13E4b = data.frame(A=0, B=0, C=0, D=0, Resistivity=c(63.4, 62.6, 58.7, 60.9))
Tab13E4 = rbind(Tab13E4a , Tab13E4b)

# Tab13E5 = DAE Problem6.39
# Tab13E6 Crack is Problem12.21
# Tab13E7 SoupFilling is DAE Problem8.54
# table 14.4 is DAE Problem6.29

# table 14.5 p617
# to get

