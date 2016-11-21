###########
#Problem 2
###########

#The intent of this analysis is to learn about house elves and their ears.


###########
#Problem 3
###########

elves_data <- read.csv("./houseel_earlength_dna_data_1.csv", stringsAsFactors = F)


###########
#Problem 6
###########

#1

gc_content <- function(seq){
  sequence <- str_to_upper(seq)
  g <- str_count(sequence, "G")
  c <- str_count(sequence, "C")
  gc_content <- (g + c) / str_length(sequence) * 100
  return(gc_content)
}

get_ear_length <- function(seq){
    #Determine the ear length category
    ear_lengths <- ifelse(seq > 10, "large", "small")
    return(ear_lengths)
}
