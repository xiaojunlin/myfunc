#' Set Chinese Support Environment for Rstudio
#'
#' This function set Chinese support environment for Rstudio
#'
#' @param ... There is no parameters
#'
#' @return
#'
#' @examples
#' @export
set_cn <- function(){
  Sys.setlocale(category ="LC_ALL", locale ="zh_cn.utf-8")
}
