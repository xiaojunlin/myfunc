#' Colors from famous academic journals
#'
#' This function provides useful color sets of famous academic journals, including NEJM, JAMA, and Nature.
#' 
#' @param ... the name of color, such as "jama_1", "nejm_2".
#' @export
#' @examples
#' require(ggplot2)
#' data(diamonds)
#' set.seed(42)
#' small <- diamonds[sample(nrow(diamonds), 1000), ]
#' ggplot(data = small) +
#'  geom_point(mapping = aes(x = carat, y = price), col=my_cols("jama_2"))


my_cols <- function(...){
  color_set = c(
    #jama
    'jama_1' = '#374E55', 
    'jama_2' = '#DF8F44',
    'jama_3' = '#00A1D5', 
    'jama_4' = '#B24745',
    'jama_5' = '#79AF97', 
    'jama_6' = '#6A6599',
    'jama_7' = '#80796B',
    #nejm
    'nejm_1' = '#BC3C29', 
    'nejm_2' = '#0072B5',
    'nejm_3' = '#E18727', 
    'nejm_4' = '#20854E',
    'nejm_5' = '#7876B1', 
    'nejm_6' = '#6F99AD',
    'nejm_7' = '#FFDC91', 
    'nejm_8' = '#EE4C97',
    #npg
    'npg_1' = '#E64B35', 
    'npg_2' = '#4DBBD5',
    'npg_3' = '#00A087', 
    'npg_4' = '#3C5488',
    'npg_5' = '#F39B7F', 
    'npg_6' = '#8491B4',
    'npg_7' = '#91D1C2', 
    'npg_8' = '#DC0000',
    'npg_9' = '#7E6148', 
    'npg_10' = '#B09C85')
  
  cols <- c(...)
  
  if (is.null(cols))
    return(color_set)
  color_set[cols]
}
