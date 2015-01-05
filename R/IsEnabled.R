#' @details stuff
#'
#' @description stuff
#' 
#' @title stuff
#' 
#' @param reportsuite.ids Report suite id
#'
#' @importFrom jsonlite toJSON
#' @importFrom RSiteCatalyst ApiRequest
#' 
#'
#' @return Data frame
#'
#' @export
#'
#' @examples
#' \dontrun{
#' 
#' 
#' 
#' }

IsEnabled <- function(reportsuite.ids) {
  
  request.body <- c()
  request.body$rsid <- reportsuite.ids
  
  response <- ApiRequest(body=toJSON(request.body),func.name="DataWarehouse.IsEnabled")
  
  return(response)
  
}