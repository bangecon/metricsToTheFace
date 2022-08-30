#' @export
runAllpayGameApp <- function(chapter, lesson) {
  tutorial <- paste0("tutorials/", chapter, "-", lesson, "-Tutorial")
  appDir <- system.file(tutorial, package = "metricsToTheFace")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `econGame`.", call. = FALSE)
  }
  file = paste0(appDir, "/", chapter, "-", lesson, "-Tutorial", ".Rmd")


  shiny::runApp(appDir, display.mode = "normal")
}
