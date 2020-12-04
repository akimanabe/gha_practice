#' Estimate l-w relationship
#'
#' @param dat tidy data with Length, Age, Sex
#' @param sex 1 for male, 2 for female
#' @param param initial param list
#'
#' @return tibble with estimated params
#' @export
#'
#' @examples
#' \dontrun{
#' estim_lwr(
#' dat = lwdata,
#' sex = c(1, 2),
#' param = list(a = 1e-5, b = 3))
#' }
estim_lwr <- function(dat, sex = c(1, 2), param = list(a = 1e-5, b = 3)) {
  dat %>%
    dplyr::filter(Sex %in% sex) %>%
    stats::nls(Weight ~ a * Length ^ b, data = ., start = param) %>%
    broom::tidy(.)
}
