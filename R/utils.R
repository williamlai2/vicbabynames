# check for API key in system environment
.onAttach <- function(...) {
  key <- Sys.getenv("vic_gov_api_key")

  msg <- "No API key found, see `set_api_key`"
  if(nchar(key) > 1) msg <- "API key loaded!"

  packageStartupMessage(msg)
}
