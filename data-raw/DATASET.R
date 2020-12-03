## code to prepare `DATASET` dataset goes here

lwdata <-
  readr::read_csv("./data-raw/lwdata.csv") %>%
  dplyr::mutate(Sex = factor(Sex, levels = c(1, 2)))


usethis::use_data(lwdata, overwrite = TRUE)
