library(usethis)
use_git()

ls(package:usethis)
use_mit_license()
use_github()



##### Prepare the text file

TextPrep <- function(file) {
  ### read in the text
  Text <- readLines(file)

  #### make it lowercase
  lowerText <- tolower(Text)

  ### create vector with individual words, removing spaces and stops
  splitText <- strsplit(gsub("[.,;]", "", lowerText), split = " ", ".", ",", ";")

  ### create vectors of negative and positive words
  positive <- c(
    "happy", "joyful", "excellent", "fantastic", "great",
    "wonderful", "amazing", "positive", "delightful", "cheerful",
    "brilliant", "inspiring", "uplifting", "love", "success",
    "prosperous", "hopeful", "dynamic", "enthusiastic", "creative"
  )


  return(splitText)
}



### Read into environment
TextPrep("C:/Users/leokow/Downloads/Example_negative.txt")

Text <- TextPrep("C:/Users/leokow/Downloads/Example_negative.txt")

print(Text)
tolower(Text)
?strsplit

