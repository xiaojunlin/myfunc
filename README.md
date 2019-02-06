# myfunc
<img src="data/sticker/myfuncSticker.png" height="200"/>


## Overview
A R package wrapping useful functions for daily work.

## Installation 

```
install.packages("devtools") 
devtools::install_github("xiaojunlin/myfunc")
```

## set_cn()

> Description

This function sets Chinese support environment for Rstudio in macOS.

> Example

` set_cn()`

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

Here are the sample plots using various colors.

- JAMA 

<img src="data/figures/jama_plot.tiff" height="300"/>

- NEJM

<img src="data/figures/nejm_plot.tiff" height="300"/>

- NPG

<img src="data/figures/npg_plot.tiff" height="300"/>

**Code:**

```
for (i in 1: length (my_cols())) {
  picname <- paste0("p", i)
  assign(picname, ggplot2::ggplot(data = small) +
           geom_point(mapping = aes(x = carat, y = price), col=my_cols()[[i]]) +
           ggtitle(names(my_cols()[i])))
}

tiff(filename = "data/figures/jama_plot.tiff", width =18, height = 8, units = "cm",  pointsize = 2, bg = "white", res=150)
gridExtra::grid.arrange(p1, p2, p3, p4, p5, p6, p7,  
             nrow = 2)
dev.off()

tiff(filename = "data/figures/nejm_plot.tiff", width =18, height = 8, units = "cm",  pointsize = 2, bg = "white", res=150)
gridExtra::grid.arrange(p8, p9, p10, p11, p12, p13,p14, p15,  
                        nrow = 2)
dev.off()

tiff(filename = "data/figures/npg_plot.tiff", width =22, height = 8, units = "cm",  pointsize = 2, bg = "white", res=150)
gridExtra::grid.arrange(p16, p17, p18, p19, p20, p21, p22, p23, p24, p25,  
                        nrow = 2)
dev.off()
```

## fill_na()

> Description 

This fucntion can replace NAs in data.frame or a vector with latest non-NA value. The R code was copied from [BruceZhaoR's repository](https://github.com/BruceZhaoR/R_Problems/blob/master/Handle-NA-Problems/fill_na.R). Thanks.

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
