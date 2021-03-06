#' @title Print mlr3* package versions
#'
#' @description
#' Returns the package versions of loaded mlr3 packages as a [data.frame].
#'
#' @export
#' @examples
#' mlr3verse_info()
mlr3verse_info = function() {
  pkgs = c("mlr3", "mlr3tuning", "mlr3pipelines", "paradox", "mlr3filters",
    "mlr3data", "mlr3learners", "mlr3viz")
  data.frame(Package = pkgs, Version = mlr3misc::map_chr(pkgs, function(x) {
    as.character(packageVersion(x))
  }))
}
