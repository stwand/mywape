#' Method wape
#'
#' @param data - data.frame
#' @param ...  - Extra options
#'
#' @return - method
#'
#' @import yardstick
#'
#' @export
#'
wape <- function(data, ...) {
  UseMethod("wape")
}
