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
#' weight(3, "lbs", "kilograms")
#'
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
