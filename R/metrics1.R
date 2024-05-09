#' @name convertmetrics
#' @title Metrics Conversion
#' @description
#' This function converts metrics between different units. All NA values from the inputs will be discarded.
#'
#' @importFrom dplyr glimpse
#'
#' @param num A number or a vector for converting.
#' @param starting_unit The starting_unit unit of our number.
#' @param final_unit The unit we want to convert to.
#' @return The converted number or vector.
#' @examples
#' distance(6, "yrd", "m")
#' weight(c(1, 2), "g", "tael")
#' weight(c(3, NA, 8), "lbs", "kg")
#' volume(c(10, 20, 30), "gal", "l")
#' temp(28, "c", "f")
#'
#' @export
distance <- function(num, starting_unit, final_unit){
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }
  if (starting_unit == "mi" && final_unit == "km") {
    converted <- 1.609344 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "km" && final_unit == "mi") {
    converted <- 0.6214 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "m" && final_unit == "yrd") {
    converted <- 1.09361 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "yrd" && final_unit == "m") {
    converted <- 0.9144 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "in" && final_unit == "cm") {
    converted <- 2.54 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "cm" && final_unit == "in") {
    converted <- 0.393701 * num
    return(round(converted, digits = 2))
  }
  stop("Sorry, our package doesn't support this distance unit right now. Try mi, km, yrd, m, in, or cm")
}

#####################
#' @rdname convertmetrics
#' @export
weight <- function(num, starting_unit, final_unit) {
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }
  # pounds & kilograms
  if (starting_unit == "lbs" && final_unit == "kg") {
    converted = num * 0.454
    return(round(converted, digits = 2))
  }
  else if (starting_unit == "kg" && final_unit == "lbs") {
    converted = num * 2.205
    return(round(converted, digits = 2))
  }
  # catty & kilograms
  else if (starting_unit == "catty" && final_unit == "kg") {
    converted = num * 2
    return(round(converted, digits = 2))
  }
  else if (starting_unit == "kg" && final_unit == "catty") {
    converted = num / 2
    return(round(converted, digits = 2))
  }
  # tael & grams
  else if (starting_unit == "tael" && final_unit == "g") {
    converted = num / 50
    return(round(converted, digits = 2))
  }
  else if (starting_unit == "g" && final_unit == "tael") {
    converted = num * 50
    return(round(converted, digits = 2))
  } else {
    stop("Sorry, our package doesn't support this weight unit right now.Try lbs, kg, catty, g or tael")
  }
}

#####################
#' @rdname convertmetrics
#' @export
volume <- function(num, starting_unit, final_unit) {
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }

  if (starting_unit == "gal" && final_unit == "l") {
    converted <- num * 3.78541
    return(round(converted, digits = 2))
  }

  if (starting_unit == "l" && final_unit == "gal") {
    converted <- num / 3.78541
    return(round(converted, digits = 2))
  } else {
    stop("Sorry, our package doesn't support this volume unit right now. Try gal or l")
  }
}


#####################
#' @rdname convertmetrics
#' @export
temp <- function(num, starting_unit, final_unit) {
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }

  if (starting_unit == "c" && final_unit == "f") {
    converted <- (num * (9/5)) + 32
    return(round(converted, digits = 2))
  } else if (starting_unit == "f" && final_unit == "c") {
    converted <- (num - 32) * (5/9)
    return(round(converted, digits = 2))
  } else {
    stop("Sorry, our package doesn't support this temperature unit right now. Try f or c")
  }
}

#####################

