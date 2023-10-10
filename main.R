library(quarto)
library(here)

source('load_data.R')
quarto_render(here("report.qmd"))
