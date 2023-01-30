# Start

x <- rnorm(
    mean = 2,
    sd = 2,
    n = 10
    )

y  <- runif(
    n = 100,
    min = 10,
    max = 30
)

library(tidyverse)

p <-  # nolint
mtcars %>%
    ggplot(., aes(x = disp, y = mpg)) +
    geom_point(aes(fill = cyl)) +
    theme_bw() +
    theme()
p

mtcars %>%
    filter(cyl >= 4) %>%
    select(cyl, mpg, disp) %>%
    mutate(cyl = as.factor(cyl)) %>%
    group_by(cyl) %>%
    mutate_all(.funs = list(min, max, sd)) %>%
    pivot_longer(!cyl) %>%
    .[1:5, ]
    knitr::kable()