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
