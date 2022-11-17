test_that("confirm that no columns are missing in the vaxx_countries dataset", {
  expect_equal(ncol(vaxx_counties), 20)
})
