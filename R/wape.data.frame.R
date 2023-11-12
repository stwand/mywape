#' WAPE data.frame
#'
#' @param data - data.frame
#' @param truth - name variable
#' @param estimate - predicted
#' @param na_rm - Removing missing values
#' @param case_weights - weights
#' @param ... - Extra options
#'
#' @return - metric value
#'
#' @export
#'
wape.data.frame <- function(data, truth, estimate, na_rm = TRUE, case_weights = NULL, ...) {
  yardstick::numeric_metric_summarizer(
    name = "wape",
    fn = wape_vec,
    data = data,
    truth = !!rlang::enquo(truth),
    estimate = !!rlang::enquo(estimate),
    na_rm = na_rm,
    case_weights = !!rlang::enquo(case_weights),
    ...
  )
}
