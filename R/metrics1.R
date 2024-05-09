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
#' weight(c(1, 2), "grams", "tael")
#' weight(c(3, NA, 8), "pounds", "kilograms")
#' volume(c(10, 20, 30), "gallons", "liters")
#' temp(28, "celsius", "fahrenheit")
#'
#' @export
distance <- function(num, starting_unit, final_unit){
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  # check if the input is NULL
  if (is.null(num)) {
    stop("Input cannot be NULL.")
  }
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }
  if (starting_unit == "miles" && final_unit == "kilometers") {
    converted <- 1.609344 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "kilometers" && final_unit == "miles") {
    converted <- 0.6214 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "meters" && final_unit == "yards") {
    converted <- 1.09361 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "yards" && final_unit == "meters") {
    converted <- 0.9144 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "inches" && final_unit == "centimeters") {
    converted <- 2.54 * num
    return(round(converted, digits = 2))
  }
  if (starting_unit == "centimeters" && final_unit == "inches") {
    converted <- 0.393701 * num
    return(round(converted, digits = 2))
  }
  stop("Sorry, our package doesn't support this distance unit right now. Try miles, kilometers, yards, meters, inches, or centimeters")
}

#####################
#' @rdname convertmetrics
#' @export
weight <- function(num, starting_unit, final_unit) {
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  # check if the input is NULL
  if (is.null(num)) {
    stop("Input cannot be NULL.")
  }
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }
  # pounds & kilograms
  if (starting_unit == "pounds" && final_unit == "kilograms") {
    converted = num * 0.454
    return(round(converted, digits = 2))
  }
  else if (starting_unit == "kilograms" && final_unit == "pounds") {
    converted = num * 2.205
    return(round(converted, digits = 2))
  }
  # catty & kilograms
  else if (starting_unit == "catty" && final_unit == "kilograms") {
    converted = num * 2
    return(round(converted, digits = 2))
  }
  else if (starting_unit == "kilograms" && final_unit == "catty") {
    converted = num / 2
    return(round(converted, digits = 2))
  }
  # tael & grams
  else if (starting_unit == "tael" && final_unit == "grams") {
    converted = num / 50
    return(round(converted, digits = 2))
  }
  else if (starting_unit == "grams" && final_unit == "tael") {
    converted = num * 50
    return(round(converted, digits = 2))
  } else {
    stop("Sorry, our package doesn't support this weight unit right now.Try pounds, kilograms, catty, grams or tael")
  }
}

#####################
#' @rdname convertmetrics
#' @export
volume <- function(num, starting_unit, final_unit) {
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  if (is.null(num)) {
    stop("Input cannot be NULL.")
  }

  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }

  if (starting_unit == "gallons" && final_unit == "liters") {
    converted <- num * 3.78541
    return(round(converted, digits = 2))
  }

  if (starting_unit == "liters" && final_unit == "gallons") {
    converted <- num / 3.78541
    return(round(converted, digits = 2))
  } else {
    stop("Sorry, our package doesn't support this volume unit right now. Try gallons or liters.")
  }
}


#####################
#' @rdname convertmetrics
#' @export
temp <- function(num, starting_unit, final_unit) {
  # convert all inputs to lowercase
  starting_unit <- tolower(starting_unit)
  final_unit <- tolower(final_unit)
  if (is.null(num)) {
    stop("Input cannot be NULL.")
  }
  # remove NA values
  if (anyNA(num)) {
    warning("Remove NA values")
    num <- num[!is.na(num)]
  }

  if (starting_unit == "celsius" && final_unit == "fahrenheit") {
    converted <- (num * (9/5)) + 32
    return(round(converted, digits = 2))
  } else if (starting_unit == "fahrenheit" && final_unit == "celsius") {
    converted <- (num - 32) * (5/9)
    return(round(converted, digits = 2))
  } else {
    stop("Sorry, our package doesn't support this temperature unit right now. Try fahrenheit or celsius")
  }
}

#####################

