#' SCAuth
#'
#' Authorise and store credentials for the Adobe Analytics API
#' 
#' @title Store Credentials for the Adobe Analytics API
#'
#' @param key client id from your app in the Adobe Marketing cloud Dev Center OR if you are using auth.method='legacy', then this is the API username (username:company)
#' @param secret secret from your app in the Adobe Marketing cloud Dev Center OR if you are using auth.method='legacy', then this is the API shared secret
#' @param debug.mode set global debug mode
#'
#' @importFrom RSiteCatalyst SCAuth
#' 
#' @return Global credentials list 'SC.Credentials'
#' 
#' @examples
#' \dontrun{
#' #Legacy authentication
#' SCAuth("key", "secret")
#' 
#' }
#'
#' @export

SCAuth <- function(key, secret, debug.mode = FALSE){
  RSiteCatalyst::SCAuth(key, secret, company='', token.file="", auth.method="legacy", debug.mode, use.1.3 = TRUE)
  
}