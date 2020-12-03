context("estim_lw_relationship")

test_that("function exists", {
  expect_is(estim_lw_relationship, "function")
})

test_that("function estimates curve", {

  res <- estim_lw_relationship(
    dat = lwdata,
    sex = 1
  )

  expect_equal(res$a, 1e-5)

  expect_equal(res$b, 3.06)

  })
