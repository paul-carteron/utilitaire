#' @title .ClearAll
#'
#' @description Clear plots, console and variables
#'
#' @importFrom grDevices dev.list dev.off
#'
#' @export
#'
.ClearAll = function()
{
   rm(list = ls(envir = globalenv()), envir = globalenv()); if(!is.null(dev.list())) dev.off(); gc(); cat(rep("\n", 50))
}
