#' Check for existance and access rights of directories
#'
#' @template checker
#' @inheritParams check_access
#' @inheritParams check_file
#' @family checker
#' @export
#' @examples
#'  test(R.home(), "directory", access = "r")
check_directory = function(x, access = "") {
  qassert(x, "S")
  if (length(x) == 0L)
    return("No diretory provided in '%%s'")

  isdir = file.info(x)$isdir
  w = which.first(is.na(isdir))
  if (length(w) > 0L)
    return(sprintf("Directory in '%%s' does not exist: '%s'", x[w]))
  w = which.first(!isdir)
  if (length(w) > 0L)
    return(sprintf("'%%s' expected to contain directories, file in place: '%s'", x[w]))

  return(check_access(x, access))
}
