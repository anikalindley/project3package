# test that the intercept output is correct
test_that("my_lm intercept is correct", {
  expect_equal(my_lm(formula = mtcars$wt ~ mtcars$cyl + mtcars$mpg, data = mtcars)[1,1], 5.07, tolerance = .01)
})
# test that the output is a table
test_that("my_lm output is correct", {
  expect_true(is.table(my_lm(formula =
                               mtcars$wt ~ mtcars$cyl + mtcars$mpg, data = mtcars)))
})
