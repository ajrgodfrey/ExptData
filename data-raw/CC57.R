library(tidyverse)
library(janitor)

library(agridat)
data(cochran.factorial)
Beans <- cochran.factorial

## need to Split treatment into individual factors
Beans = Beans |> 
    mutate(D = -1 + 2 * grepl('d',trt),
                 N = -1 + 2 * grepl('n',trt),
                 P = -1 + 2 * grepl('p',trt),
                 K = -1 + 2 * grepl('k',trt)) |>
    mutate(across(D:K, as_factor)) |>
    select(-trt, -rep) |>
    clean_names(case="upper_camel") 

usethis::use_data(Beans, overwrite = TRUE)
