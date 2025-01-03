#' Czekanowski index for overlap in resource use between two species.
#'
#' @param p A vector of relative frequence of activity pattern.
#' @param q A vector of relative frequence of activity pattern.
#'
#' @return An index value of overlap resource use.
#' @export
#'
#' @examples
#' n = 6
#' p = ifelse(runif(n) > 0.5, 1, 0)
#' p <- p/sum(p)
#' q = ifelse(runif(n) > 0.5, 1, 0)
#' q <- q/sum(q)
#' czekanowski_index(p, q)
czekanowski_index <- function(p, q){
  1 - 0.5*sum(abs(p - q))
}
