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
