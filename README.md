# myfunc

## Overview
A R package wrapping useful functions for daily work.

## Installation 

```
install.packages("devtools")
devtools::install_github("xiaojunlin/myfunc")

```
## my_cols()
> Description 

This function provides useful color sets of famous academic journals, including NEJM, JAMA, and Nature.

> Example

```
require(ggplot2)
data(diamonds)
set.seed(42)
small <- diamonds[sample(nrow(diamonds), 1000), ]
ggplot(data = small) +
 geom_point(mapping = aes(x = carat, y = price), col=my_cols("jama_2"))

```
