#' Create wape_impl
#'
#' @param truth - vector
#' @param estimate - vector predicted
#' @param case_weights - vector
#'
#' @return - - vector
#' @export
#'
#'
wape_impl <- function(truth, estimate, case_weights = NULL) {
  100*sum(abs(truth - estimate))/sum(truth)
}
