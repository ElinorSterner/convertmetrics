distance <- function(x, starting, final){
  starting <- tolower(starting)
  final <- tolower(final)
  if (starting == "miles" && final == "kilometers") {
    converted <- 1.609344 * x
    return(converted)
  }
  if (starting == "kilometers" && final == "miles") {
    converted <- 0.6214 * x
    return(converted)
  }
  if (starting == "meters" && final == "yards") {
    converted <- 1.09361 * x
    return(converted)
  }
  if (starting == "yards" && final == "meters") {
    converted <- 0.9144 * x
    return(converted)
  }
  if (starting == "inch" && final == "centimeter") {
    converted <- 2.54 * x
    return(converted)
  }
  if (starting == "centimeter" && final == "inch") {
    converted <- 0.393701 * x
    return(converted)
  }
  stop("Check your starting and final parameters, at least one of them doesn't match the possibilities for this function")
}

