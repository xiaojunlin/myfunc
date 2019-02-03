# myfunc
<img src="data/sticker/myfuncSticker.png" height="300"/>

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

## fill_na()
> Description 

This fucntion can replace NAs in data.frame or a vector with latest non-NA value. I copy the R code from [BruceZhaoR's repository](https://github.com/BruceZhaoR/R_Problems/blob/master/Handle-NA-Problems/fill_na.R). Thanks.

> Example

```
x <- c(1, NA, NA, 2, 3)
y <- c(NA, NA, 1, NA, 3)
xy <- data.frame(x,y)
fill_na(x)
fill_na(y)
fill_na(xy, x, y)
fill_na(xy, c("x","y"))
```
