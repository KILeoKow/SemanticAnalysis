library(usethis)
use_git()

ls(package:usethis)
use_mit_license()
use_github()



##### Prepare the text file ####

TextPrep <- function(file) {
  ### read in the text
  Text <- readLines(file)

  #### make it lowercase
  lowerText <- tolower(Text)

  ### create vector with individual words, removing spaces and stops
  splitText <- unlist(strsplit(gsub("[.,;]", "", lowerText), split = " ", ".", ",", ";"))

  return(splitText)
}

#### Load final text vector into environment
Text <- TextPrep("C:/Users/leokow/Downloads/Example_negative.txt")


#### create vectors of negative and positive words ####
positive <- c(
  "happ*", "joy*", "excell*", "fantast*", "grea*",
  "wonder*", "amaz*", "posit*", "deligh*", "cheer*",
  "brilli*", "inspi*", "uplif*", "lov*", "succ*",
  "prosp*", "hope*", "dyna*", "enthusi*", "creat*"
)

negative <- c(
  "sad*", "angr*", "terrib*", "horrib*", "bad*",
  "awf*", "disap*", "negati*", "misera*", "frustra*",
  "dism*", "unhap*", "tox*", "fail*", "hopele*",
  "pessim*", "stagn*", "bori*", "depres*", "woefu*"
)





#### Function which compares vectors to text #####

comparison <- function(vector) {
  counter <- 0
  for (i in vector) {
    ### removes the * from the end of each word in the vector
    base_word <- gsub("\\*$", "", i)

    #### loops through each word in text checking if it matches words in vector
    for (word in Text) {
      if(startsWith(word, base_word)) {
        print(word)
        counter <- counter + 1
      }
    }
  }
  return(counter)
}

comparison(negative)
comparison(positive)




if (i %in% Text) {
  counter <- counter + 1
  print(i)
}

### Read into environment
TextPrep("C:/Users/leokow/Downloads/Example_negative.txt")

Text <- TextPrep("C:/Users/leokow/Downloads/Example_negative.txt")

#### Function which compares positive or negative words with words in text



for (j in splitText) {
  if i == j
  iterations <- 0
  for (i in 1:length(arr)) {
    iterations <- iterations + 1
    if (arr[i] == target) {
      return(iterations)
    }

}

?endsWith()
