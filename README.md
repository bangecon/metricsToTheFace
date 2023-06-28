# metricsToTheFace

Tutorials and practice using "learnr" for Introductory Econometrics by Jeffrey Wooldridge

## Installation

To install the package from github, use the install_github() function from devtools:

`devtools::install_github('bangecon/metricsToTheFace')`

If you get an error using devtools, another option uses the `pak` package: 

`pak::pkg_install('bangecon/metricsToTheFace')`

If you get an error involving the dependencies `gradethis` or `ggcheck`, you might need to install these packages *first*, then proceed with installing `metricsToTheFace`. 

## Running Tutorials

To run a tutorial, first load `metricsToTheFace` using `library()`. 

`metricsToTheFace` includes a specialized wrapper for `learnr::run_tutorial()` called `runTutorial()`. This simplifies the startup process for running tutorials so that students do not need to know the file path for the tutorials within the package. The syntax is:  
  `runTutorial(chapter, lesson, practice)`,  
where `chapter` is the chapter number (1-19) or appendix letter (B or C), `lesson` is the lesson number within the chapter (1, 2, or 3), and `practice` is either `TRUE` for extra practice or `FALSE` (default) for the main tutorial.  

## Recording Tutorials

Students can record their inputs to tutorial exercises using `recordTutorial()`. Like `runTutorial()`, `recordTutorial()` is a wrapper for `learnr::recordTest()` that simplifies what students need to remember to complete their work. The syntax is the same as for `runTutorial()`. 

## Clearing Tutorials

If a student wants to clear their progress on a tutorial and start over, they can use `clearTutorial(chapter, lesson, practice)` similarly to `runTutorial()` and `recordTutorial()`. Students will rarely use this since `learnr` tutorials include a "Start Over" button that clears progress and navigates back to the first slide. 

## Randomly Selecting a Student Presenter 

Instructors may want to select a student at random to present results for an exercise or tutorial. The `runRandomPresnterApp()` runs an app that randomly selects a student from a pre-filled Google Sheet, which the instructor can make replicable using a random seed field in the app. The default value for the random seed is the current date (yyyymmdd without dashes or slashes).
