test_that("distance objects have the correct structure", {
  # distance objects should have the same length as input when there is no NA values
  expect_equal(length(distance(num = c(1, 2, 32), starting_unit = "yards", final_unit = "meters")), 3)
  # distance objects should print a warning when there are NA values
  expect_warning(length(distance(num = c(NA, NA, 29), starting_unit = "kilometers", final_unit = "miles")))
  # distance objects should be built on top of numeric vectors
  expect_true(is.numeric(distance(num = c(72, 89), starting_unit = "inches", final_unit = "centimeters")))
})

test_that("weight objects have the correct structure", {
  # weight objects should have the same length as input when there is no NA value
  expect_equal(length(weight(num = c(2, 4), starting_unit = "pounds", final_unit = "kilograms")), 2)
  # weight objects should print a warning when there are NA values
  expect_warning(length(weight(num = c(2, 4, NA), starting_unit = "catty", final_unit = "kilograms")))
  # weight objects should be built on top of numeric vectors
  expect_true(is.numeric(weight(num = 8, starting_unit = "kilograms", final_unit = "pounds")))
})

test_that("volume objects have the correct structure", {
  # volume objects should have the same length as input when there is no NA values
  expect_equal(length(volume(num = 3, starting_unit = "gallons", final_unit = "liters")), 1)
  # volume objects should print a warning when there are NA values
  expect_warning(length(volume(num = c(4, NA), starting_unit = "liters", final_unit = "gallons")))
  # volume objects should be built on top of numeric vectors
  expect_true(is.numeric(volume(num = c(8, 9), starting_unit = "liters", final_unit = "gallons")))
})

test_that("temp objects have the correct structure", {
  # temp objects should have the same length as input when there is no NA values
  expect_equal(length(temp(num = c(1, 7), starting_unit = "celsius", final_unit = "fahrenheit")), 2)
  # temp objects should print a warning when there are NA values
  expect_warning(length(temp(num = c(4, NA, NA, 2), starting_unit = "fahrenheit", final_unit = "celsius")))
  # temp objects should be built on top of numeric vectors
  expect_true(is.numeric(temp(num = 56, starting_unit = "celsius", final_unit = "fahrenheit")))
})
