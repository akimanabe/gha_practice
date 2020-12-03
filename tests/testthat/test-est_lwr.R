context("est_lwr")

test_that("function exists", {
  expect_is(est_lwr, "function")
})

test_that("function calculates W based on data", {
  expect_equal(
    est_lwr(100, param = list(a = 1e-5, b = 3.2)),
    25.1,
    tolerance = 0.001
  )
})
