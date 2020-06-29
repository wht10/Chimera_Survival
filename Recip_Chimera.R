if (!require("pacman")) install.packages("pacman")
pacman::p_load("tidyverse", "survival","survminer","readr")

library(tidyverse)
library(survival)
library(survminer)
library(readr)

urlfile <- "https://raw.githubusercontent.com/wht10/Chimera_Survival/master/Recip_Chimera.csv"
dat <- read_csv(url(urlfile))

dat <- dat %>% mutate(donor_geno = as.factor(donor_geno)) %>%  
  mutate(recip_geno = as.factor(recip_geno)) %>% 
  mutate(rep = as.factor(rep))

res.cox <- coxph(Surv(days_pi,censored) ~ ., data = dat)
summary(res.cox)

http://www.sthda.com/english/wiki/cox-proportional-hazards-model
http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.459.4496&rep=rep1&type=pdf