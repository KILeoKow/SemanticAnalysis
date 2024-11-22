library(usethis)
use_git()

ls(package:usethis)
use_mit_license()
use_github()



##### Prepare the text file

TextPrep <- function(file) {
  Text <- readLines(file)
  lowercase_text <- tolower(Text)
 # return(Text)
  strsplit()
  return(lowercase_text)
}

### Read into environment
TextPrep("C:/Users/leokow/Downloads/Example_negative.txt")

Text <- TextPrep("C:/Users/leokow/Downloads/Example_negative.txt")

print(Text)
tolower(Text)


