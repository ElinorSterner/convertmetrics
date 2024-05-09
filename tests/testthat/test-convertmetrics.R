test_that("distance objects have the correct structure", {
  # distance objects should have the same length as input when there is no NA values
  expect_equal(length(distance(num = c(1, 2, 32), starting_unit = "yrd", final_unit = "m")), 3)
  # distance objects should print a warning when there are NA values
  expect_warning(length(distance(num = c(NA, NA, 29), starting_unit = "km", final_unit = "mi")))
  # distance objects should be built on top of numeric vectors
  expect_true(is.numeric(distance(num = c(72, 89), starting_unit = "in", final_unit = "cm")))
})

test_that("weight objects have the correct structure", {
  # weight objects should have the same length as input when there is no NA value
  expect_equal(length(weight(num = c(2, 4), starting_unit = "lbs", final_unit = "kg")), 2)
  # weight objects should print a warning when there are NA values
  expect_warning(length(weight(num = c(2, 4, NA), starting_unit = "catty", final_unit = "kg")))
  # weight objects should be built on top of numeric vectors
  expect_true(is.numeric(weight(num = 8, starting_unit = "kg", final_unit = "lbs")))
})

test_that("volume objects have the correct structure", {
  # volume objects should have the same length as input when there is no NA values
  expect_equal(length(volume(num = 3, starting_unit = "gal", final_unit = "l")), 1)
  # volume objects should print a warning when there are NA values
  expect_warning(length(volume(num = c(4, NA), starting_unit = "l", final_unit = "gal")))
  # volume objects should be built on top of numeric vectors
  expect_true(is.numeric(volume(num = c(8, 9), starting_unit = "l", final_unit = "gal")))
})

test_that("temp objects have the correct structure", {
  # temp objects should have the same length as input when there is no NA values
  expect_equal(length(temp(num = c(1, 7), starting_unit = "c", final_unit = "f")), 2)
  # temp objects should print a warning when there are NA values
  expect_warning(length(temp(num = c(4, NA, NA, 2), starting_unit = "f", final_unit = "c")))
  # temp objects should be built on top of numeric vectors
  expect_true(is.numeric(temp(num = 56, starting_unit = "c", final_unit = "f")))
})
