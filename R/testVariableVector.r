#' @rdname assertConstant
#' @export
assertVariableVector = function(x, tol = .Machine$double.eps^0.5, .var.name) {
  amsg(testVariableVector, vname(x, .var.name))
}

#' @rdname assertConstant
#' @export
isVariableVector = function(x, tol = .Machine$double.eps^0.5) {
  isTRUE(testVariableVector(x, tol))
}

#' @rdname assertVariable
#' @export
asVariableVector = function(x, tol = .Machine$double.eps^0.5, .var.name) {
  assertVariableVector(x, tol = tol, .var.name = vname(x, .var.name))
  x
}

testVariableVector = function(x, tol = .Machine$double.eps^0.5) {
  if (testConstantVectorHelper(x, tol))
    return("'%s' must have variable elements")
  return(TRUE)
}
