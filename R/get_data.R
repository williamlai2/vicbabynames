#' Get all baby names data
#'
#' The top 100 names for all years available
#'
#' @examples
#' \dontrun{
#' get_all_data()
#' }
#'
#' @import httr
#' @import jsonlite
#' @import tibble
#'
#' @export
get_all_data <- function(){

  url <- "https://wovg-community.gateway.prod.api.vic.gov.au/bdm/names/v1.0/popular-baby-names"

  # get raw data
  data <- httr::GET(url,
            httr::add_headers("Content-Type" = "application/json",
                  "Accept" = "application/json",
                  "apikey" = Sys.getenv("vic_gov_api_key"))
  )

  # content from raw data
  content_out <- jsonlite::fromJSON(rawToChar(data$content))

  # tibble of data
  content_out$popular_baby_names %>%
    tibble::as_tibble()

}

#' Get all baby names data for a specific year
#'
#' The top 100 names for a specific year
#'
#' @examples
#' \dontrun{
#' get_year_data(2008)
#' }
#'
#' @param year The year to filter by. First year available is 2008.
#'
#' @import httr
#' @import jsonlite
#' @import tibble
#'
#' @export
get_year_data <- function(year){

  url <- "https://wovg-community.gateway.prod.api.vic.gov.au/bdm/names/v1.0/popular-baby-names"

  # get raw data
  data <- httr::GET(url,
                    httr::add_headers("Content-Type" = "application/json",
                                      "Accept" = "application/json",
                                      "apikey" = Sys.getenv("vic_gov_api_key")),
                    query = list("year" = 2008)
  )

  # content from raw data
  content_out <- jsonlite::fromJSON(rawToChar(data$content))

  # tibble of data
  content_out$popular_baby_names %>%
    tibble::as_tibble()

}

