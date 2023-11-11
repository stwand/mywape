#' WAPE vector
#'
#' @param truth - Vector
#' @param estimate - Vector predicted
#' @param na_rm - Removing missing values
#' @param case_weights - Vector
#' @param ... - Extra options
#'
#' @return - metric value
#'
#' @import yardstick
#'
#' @export
#'
#'
wape_vec <- function(truth, estimate, na_rm = TRUE, case_weights = NULL, ...) {
  yardstick::check_numeric_metric(truth, estimate, case_weights)
  if (na_rm) {
    result <- yardstick::yardstick_remove_missing(truth, estimate, case_weights)

    truth <- result$truth
    estimate <- result$estimate
    case_weights <- result$case_weights
  } else if (yardstick::yardstick_any_missing(truth, estimate, case_weights)) {
    return(NA_real_)
  }
  wape_impl(truth, estimate, case_weights = case_weights)
}
