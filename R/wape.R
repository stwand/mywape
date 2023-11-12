#' Method wape
#'
#' @param data - data.frame
#' @param ...  - Extra options
#'
#' @return - method
#'
#' @export
#'
wape <- function(data, ...) {
  UseMethod("wape")
}

wape <- yardstick::new_numeric_metric(
  wape,
  direction = "minimize"
)

