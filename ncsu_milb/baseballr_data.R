#Bring in relevant data.

library(tidyverse)

devtools::install_github("BillPetti/baseballr")

library(baseballr)

require(baseballr)
require(tidyverse)

###################################################################################
#Get Game Packs
###################################################################################


#TODO: Identify relevant date ranges and find a way to use get_game_pks on all dates.
pB_dateRange <- ""
pBailey_gmpk <- get_game_pks_mlb(date = pB_dateRange, level_ids = c(11))

wW_dateRange <- ""
wWilson_gmpk <- get_game_pks_mlb(date = wW_dateRange, level_ids = c(11, 12))
#may need to split this one up because it's over multiple seasons

jB_dateRange <- ""
jButler_gmpk <-get_game_pks_mlb(date = jB_dateRange, level_ids = c(13, 16))
#may need to change 


###################################################################################
#Get Pitch by Pitch Data for each player.
###################################################################################

