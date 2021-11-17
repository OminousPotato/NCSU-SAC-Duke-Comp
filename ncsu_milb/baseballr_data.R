#Bring in relevant data.

library(tidyverse)

#devtools::install_github("BillPetti/baseballr")

library(baseballr)

require(baseballr)
require(tidyverse)

###################################################################################
#Get Game Packs
###################################################################################


#TODO: Identify relevant date ranges and find a way to use get_game_pks on all dates.
# pB_dateRange <- seq.Date(as.Date('2021-01-01'), 
#                          as.Date('2021-12-31'), 
#                          'day')
# pBailey_gmpk <- get_game_pks_mlb(date = pB_dateRange, level_ids = c(13, 14)) #13: Class-A Advanced, 14: Class A
# 
# wW_dateRange <- seq.Date(as.Date('2021-01-01'), 
#                          as.Date('2021-12-31'), 
#                          'day')
# wWilson_gmpk <- get_game_pks_mlb(date = wW_dateRange, level_ids = c(13, 14))
# #may need to split this one up because it's over multiple seasons
# 
# jB_dateRange <- seq.Date(as.Date('2021-01-01'), 
#                         as.Date('2021-12-31'), 
#                         'day')
# jButler_gmpk <-get_game_pks_mlb(date = jB_dateRange, level_ids = c(13))
# #may need to change 

# gamepacks <- map_df(.x = seq.Date(as.Date('2021-01-01'), 
#                           as.Date('2021-12-31'), 
#                           'day'), 
#             ~get_game_pks_mlb(date = .x, 
#                               level_ids = c(11,12,13,14,15))
# )


###################################################################################
#Get Pitch by Pitch Data for each player.
###################################################################################

pBailey <- baseballr::milb_batter_game_logs_fg("sa3014442", year = 2021)

wWilson <- baseballr::milb_batter_game_logs_fg("sa3009871", year = 2021)

jButler <- baseballr::milb_batter_game_logs_fg("sa3017292", year = 2021)

vlad_dates <- vlad %>%
  pull(Date)



