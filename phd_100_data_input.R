setwd("C:/Users/kturkalj/Documents/_Ph.D_i_CV/Ph.D. rad/Radionica_Prijava rada/Prijava rada")

#################################################
#################################################
#################################################
##
##
## UČINAK PRIMJENE NEKONVENCIONALNIH INSTRUMENATA
## MONETARNE POLITIKE NA STABILIZACIJU EKONOMSKE
## AKTIVNOSTI 
##
## Učitavanje podataka
##
## Katja Gattin Turkalj 
##
##
#################################################
#################################################
#################################################

getwd()

library(haven)
gfdd_areaer <- read_dta("gfdd_areaer.dta")
View(gfdd_areaer)
str(gfdd_areaer)
head(gfdd_areaer)
