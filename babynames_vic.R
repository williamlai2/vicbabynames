library(tidyverse)


url <- "https://wovg-community.gateway.prod.api.vic.gov.au/bdm/names/v1.0/popular-baby-names"
api_key <- "66d78397-09c8-4946-8b98-a348804a8040"

# for all data
data <- httr::GET(url, 
                  add_headers("Content-Type" = "application/json",
                              "Accept" = "application/json",
                              "apikey" = api_key),
                  query = list("year" = 2008)
)

# single year
data_year <- httr::GET(url, 
                  add_headers("Content-Type" = "application/json",
                              "Accept" = "application/json",
                              "apikey" = api_key),
                  query = list("year" = 2008)
)

# probably not worth doing the rest

# data here
content_out <- jsonlite::fromJSON(rawToChar(data$content))


names <- content_out$popular_baby_names %>% 
  as_tibble()
