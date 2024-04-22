#' @name weight
#' @title Weight Conversion
#' @description
#' This function converts weight between different units
#' @param num A number or a vector for converting.
#' @param starting_unit The starting unit of our number.
#' @param final_unit The unit we want to convert to.
#' @return A sentence describing the conversion.
#' @examples
#' weight(c(1,2), "g", "tael")
#' weight(3, "lbs", "kilos")
#'
#' @export
distance <- function(num, starting, final){
  starting <- tolower(starting)
  final <- tolower(final)
  if (starting == "miles" && final == "kilometers") {
    converted <- 1.609344 * num
    return(converted)
  }
  if (starting == "kilometers" && final == "miles") {
    converted <- 0.6214 * num
    return(converted)
  }
  if (starting == "meters" && final == "yards") {
    converted <- 1.09361 * num
    return(converted)
  }
  if (starting == "yards" && final == "meters") {
    converted <- 0.9144 * num
    return(converted)
  }
  if (starting == "inchs" && final == "centimeters") {
    converted <- 2.54 * num
    return(converted)
  }
  if (starting == "centimeters" && final == "inchs") {
    converted <- 0.393701 * num
    return(converted)
  }
  stop("Check your starting and final parameters, at least one of them doesn't match the possibilities for this function")
}

#####################

weight <- function(num, starting_unit, final_unit) {
  if (starting_unit == "lbs") {
    kilos = num * 0.454
    for (i in seq_along(num)) {
      cat(num[i], "lbs equal to", kilos[i], "kilos\n")
    }
  }
  else if (starting_unit == "kilos") {
    lbs = num * 2.205
    for (i in seq_along(num)) {
      cat(num[i], "kilos equal to", lbs[i], "lbs\n")
    }
  }
  else if (starting_unit == "catty") {
    kg = num * 2
    for (i in seq_along(num)) {
      cat(num[i], "catty equal to", kg[i], "kg\n")
    }
  }
  else if (starting_unit == "kg") {
    catty = num / 2
    for (i in seq_along(num)) {
      cat(num[i], "kg equal to", catty[i], "catty\n")
    }
  }
  else if (starting_unit == "tael") {
    g = num / 50
    for (i in seq_along(num)) {
      cat(num[i], "tael equal to", g[i], "g\n")
    }
  }
  else if (starting_unit == "g") {
    tael = num * 50
    for (i in seq_along(num)) {
      cat(num[i], "g equal to", tael[i], "tael\n")
    }
  } else {
    stop("Sorry, our package don't support this weight unit right now.")
  }
}

#####################

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

