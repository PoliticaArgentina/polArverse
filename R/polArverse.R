#' \code{polArverse} meta package
#'
#' Caja de Herramientas para el Análisis Poítico de Argentina.
#' See the README on
#' \href{https://github.com/PoliticaArgentina/polArverse/README.md}{Github}
#'
#' @docType package
#' @name polArverse
NULL

## quiets concerns of R CMD check re: the .'s that appear in pipelines

if(getRversion() >= "2.15.1")
  utils::globalVariables(c("msg"))




.onAttach <- function(...) {
  needed <- core[!is_attached(core)]
  if (length(needed) == 0)
    return()

  crayon::num_colors(TRUE)
  polArverse_attach()


}

is_attached <- function(x) {
  paste0("package:", x) %in% search()

}
