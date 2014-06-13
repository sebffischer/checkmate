#' Check if an argument is NULL
#'
#' @templateVar fn Null
#' @template checker
#' @export
checkNull = function(x) {
  if (!is.null(x))
    return("Must be NULL")
  return(TRUE)
}

#' @rdname checkNull
#' @export
assertNull = function(x, .var.name) {
  makeAssertion(
    checkNull(x)
  , vname(x, .var.name))
}

#' @rdname checkNull
#' @export
testNull = function(x) {
  isTRUE(
    checkNull(x)
  )
}
