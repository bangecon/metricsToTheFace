##' Clearing a tutorial for `metricsToTheFace`.
##'
##' This function clears previous recordings of a `metricsToTheFace` tutorial.
##'
##' @param chapter is a character value corresponding to the chapter number.
##'     B = Appendix B
##'     C = Appendix C
##'     1, ..., 19 = Chapters 1-19
##' @param lesson is a numerical value corresponding to the lesson within a module, usually 1, 2, or 3.
##' @param practice is a logical value indicating whether to clear the main tutorial or practice.
##' @export

clearTutorial <- function(module, lesson, practice = FALSE, ...) {
  if(practice == TRUE) {
    tutorial <- paste0("tutorials/", module, "_", lesson, "_Practice")
    appDir <- system.file(tutorial, package = "metricsToTheFace")
    if (appDir == "") {
      stop("Could not find example directory. Try re-installing `metricsToTheFace`.", call. = FALSE)
    }
    file = paste0(appDir, "/", module, "_", lesson, "_Practice.Rmd")
  } else {
    tutorial <- paste0("tutorials/", module, "_", lesson)
    appDir <- system.file(tutorial, package = "metricsToTheFace")
    if (appDir == "") {
      stop("Could not find example directory. Try re-installing `metricsToTheFace`.", call. = FALSE)
    }
    file = paste0(appDir, "/", module, "_", lesson, ".Rmd")
  }
  rmarkdown::shiny_prerendered_clean(appDir)
}
