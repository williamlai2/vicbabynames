#' Setup API Key
#'
#' Setup your session, all subsequent calls will use the API key from the system environment
#'
#' @param key Your API key, freely available at
#' \url{https://wovg-community.portal.prod.api.vic.gov.au/}.
#'
#' @note You can specify \code{set_api_key} as environment variable, in your \code{.Renviron} file.
#' If you really need one, the sample API key is "66d78397-09c8-4946-8b98-a348804a8040"
#'
#' @examples
#' \dontrun{
#' set_api_key("xXXxxXxXxXXx")
#' }
#'
#' @import assertthat
#'
#' @name setup
#' @export
set_api_key <- function(key){
  assertthat::assert_that(!missing(key), msg = "Missing key")
  Sys.setenv(vic_gov_api_key = key)
}


