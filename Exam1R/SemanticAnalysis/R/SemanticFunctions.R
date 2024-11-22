#' @title TextPrep
#'

#' @param textfile
#' @return vector with lowercase words extracted from txt file as elements
#'
#' @example "Hello, how are you?" returns c("hello", "how", "are" "you")
#'
#'
#' @title comparison
#'
#' @param vector with words as elements
#' @return calculates how many words in the vector appear in the original txt file
#'
#' @example comparison(positive) returns 2 becuase two words in positive vector appear in txt file
#'
#' @title summary
#'
#' @param vector1
#' @param vector2
#'
#' @return how many words of each vector appear in the original txt file and
#' the ratio between these
#'
#' @example summary(positive, negative) returns 2, 5, and 0.4.




##### Transform text file to vector with words as elements ####

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
  "prosp*", "hope*", "dyna*", "enthusi*", "creat*",
  "reason*")

negative <- c(
  "sad*", "angr*", "terrib*", "horrib*", "bad*",
  "awf*", "disap*", "negati*", "misera*", "frustra*",
  "dism*", "unhap*", "tox*", "fail*", "hopele*",
  "pessim*", "stagn*", "bori*", "depres*", "woefu*", "fatig*",
  "heav*", "naus*", "restl*")




#### Function which compares vectors to text #####

comparison <- function(vector) {
  counter <- 0
  for (i in vector) {
    ### removes the * from the end of each word in the vector
    base_word <- gsub("\\*$", "", i)

    #### loops through each word in text checking if it matches words in vector
    for (word in Text) {
      if(startsWith(word, base_word)) {
        ### if it matches it adds to the counter.
        counter <- counter + 1
      }
    }
  }
  return(counter)
}

comparison(negative)
comparison(positive)




#### This function summarizes output, returning how many words are positive ####
#### or negative as well as the ratio between positive to negative words.
summary <- function(positiveWords, negativeWords) {
  print("Number of positive words")
  print(comparison(positiveWords))
  print("Number of negative words")
  print(comparison(negativeWords))
  print("Ratio of positive to negative words")
  print(comparison(positiveWords)/comparison(negativeWords))
}

summary(positive, negative)
