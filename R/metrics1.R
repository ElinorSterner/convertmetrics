# Volume conversion function
volume <-
  function(num = NULL,
           starting_unit = "gal",
           final_unit = "lit") {
    # Check if num is NULL
    if (is.null(num)) {
      stop("Input 'num' cannot be NULL.")
    }

    # Remove NA values
    if (anyNA(num)) {
      warning("Remove NA values")
      num <- na.omit(num)
    }

    # Conversion factors
    conversion_factors <- c("gal" = 3.78541, "lit" = 1)

    # Perform conversion
    if (starting_unit == "gal" && final_unit == "lit") {
      result <- num * conversion_factors[2] / conversion_factors[1]
    } else if (starting_unit == "lit" && final_unit == "gal") {
      result <- num * conversion_factors[1] / conversion_factors[2]
    } else {
      stop("Conversion not supported.")
    }

    return(result)
  }


# Temperature conversion function
temp <-
  function(num = NULL,
           starting_unit = "c",
           final_unit = "f") {
    # Check if num is NA
    if (is.null(num)) {
      stop("Input cannot be NULL.")
    }

    # Remove NA values
    if (anyNA(num)) {
      warning("Remove NA values")
      num <- na.omit(num)
    }

    # Conversion formula
    if (starting_unit == "c" && final_unit == "f") {
      result <- (num * 9 / 5) + 32
    } else if (starting_unit == "f" && final_unit == "c") {
      result <- (num - 32) * 5 / 9
    } else {
      stop("Conversion not supported.")
    }

    return(result)
  }

# Test volume conversion
volume(num = 10,
       starting_unit = "gal",
       final_unit = "lit")  # Expected output: 37.8541
volume(
  num = c(10, 20, 30),
  starting_unit = "gal",
  final_unit = "lit"
)  # Expected output: c(37.8541, 75.7082, 113.5624)

# Test temperature conversion
temp(num = 0,
     starting_unit = "c",
     final_unit = "f")  # Expected output: 32
temp(num = c(0, 100),
     starting_unit = "c",
     final_unit = "f")  # Expected output: c(32, 212)
