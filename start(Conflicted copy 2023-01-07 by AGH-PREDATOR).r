# Start

x  <- rnorm(mean = 2, sd = 2, n = 10)

library(tidyverse)

p <-  # nolint
mtcars %>%
    ggplot(., aes(x = disp, y = mpg)) +
    geom_point(aes(fill = cyl)) +
    theme_bw() +
    theme()
p
mtcars

 # nolint

