#' @name convertmetrics
#' @title Metrics Conversion
#' @description
#' This function converts metrics between different units
#' @param num A number or a vector for converting.
#' @param starting_unit The starting_unit unit of our number.
#' @param final_unit The unit we want to convert to.
#' @return The converted number or vector.
#' @examples
#' distance(6, "yards", "meters")
#' weight(c(1,2), "g", "tael")
#' weight(3, "lbs", "kilograms")
#' volume(c(10, 20, 30), "gal", "lit")
#' temp(28, "c", "f")
#'
#' @export
distance <- function(num, starting_unit, final_unit){
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  if (starting_unit == "miles" && final_unit == "kilometers") {
    converted <- 1.609344 * num
    return(converted)
  }
  if (starting_unit == "kilometers" && final_unit == "miles") {
    converted <- 0.6214 * num
    return(converted)
  }
  if (starting_unit == "meters" && final_unit == "yards") {
    converted <- 1.09361 * num
    return(converted)
  }
  if (starting_unit == "yards" && final_unit == "meters") {
    converted <- 0.9144 * num
    return(converted)
  }
  if (starting_unit == "inchs" && final_unit == "centimeters") {
    converted <- 2.54 * num
    return(converted)
  }
  if (starting_unit == "centimeters" && final_unit == "inchs") {
    converted <- 0.393701 * num
    return(converted)
  }
  stop("Check your starting and final_unit parameters, at least one of them doesn't match the possibilities for this function")
}

#####################
#' @rdname convertmetrics
#' @export
weight <- function(num, starting_unit, final_unit) {
  # check if the input is NULL
  if (is.null(num)) {
    stop("Input cannot be NULL.")
  }
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }
  # lbs & kilogram
  if (starting_unit == "lbs" && final_unit == "kilograms") {
    kilograms = num * 0.454
    # for (i in seq_along(num)) {
    #   cat(num[i], "lbs equal to", kilograms[i], "kilograms\n")
    # }
    return(kilograms)
  }
  else if (starting_unit == "kilograms" && final_unit == "lbs") {
    lbs = num * 2.205
    # for (i in seq_along(num)) {
    #   cat(num[i], "kilograms equal to", lbs[i], "lbs\n")
    # }
    return(lbs)
  }
  # catty & kg
  else if (starting_unit == "catty" && final_unit == "kg") {
    kg = num * 2
    # for (i in seq_along(num)) {
    #   cat(num[i], "catty equal to", kg[i], "kg\n")
    # }
    return(kg)
  }
  else if (starting_unit == "kg" && final_unit == "catty") {
    catty = num / 2
    # for (i in seq_along(num)) {
    #   cat(num[i], "kg equal to", catty[i], "catty\n")
    # }
    return(catty)
  }
  # tael & g
  else if (starting_unit == "tael" && final_unit == "g") {
    g = num / 50
    # for (i in seq_along(num)) {
    #   cat(num[i], "tael equal to", g[i], "g\n")
    # }
    return(g)
  }
  else if (starting_unit == "g" && final_unit == "tael") {
    tael = num * 50
    # for (i in seq_along(num)) {
    #   cat(num[i], "g equal to", tael[i], "tael\n")
    # }
    return(tael)
  } else {
    stop("Sorry, our package don't support this weight unit right now.")
  }
}

#####################
# Volume conversion function
#' @rdname convertmetrics
#' @export

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
      result <- num * conversion_factors[1]
    } else if (starting_unit == "lit" && final_unit == "gal") {
      result <- num * conversion_factors[1]
    } else {
      stop("Conversion not supported.")
    }

    return(result)
  }

# Temperature conversion function
#' @rdname convertmetrics
#' @export

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
