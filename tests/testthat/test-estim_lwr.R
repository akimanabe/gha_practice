context("estim_lwr")

test_that("function exists", {
  expect_is(estim_lwr, "function")
})

test_that("function estimates curve", {

  res <- estim_lwr(
    dat = lwdata,
    sex = c(1, 2)
  )

  expect_equivalent(
    res %>%
      dplyr::select(estimate),
    tibble::tibble(estimate = c(0.00001, 3.03)),
    tolerance = 0.01
  )
  })
