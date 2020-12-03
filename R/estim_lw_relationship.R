#' Calculate W based on L, a, b
#'
#' @param L length
#' @param param list of a and b
#'
#' @return Westim
est_lwr <- function(L, param=list(a,b)){
  param$a * L ^ param$b
}

estim_lw_relationship <- function(dat){


}
