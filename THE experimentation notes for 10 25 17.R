best_practice <- c("Let", "the", "computer" , "do" , "the" , "work")
print_words <- function(sentence){
 # print(sentence[1])
  #print(sentence[2])
  #print(sentence[3])
  #print(sentence[4])
  #print(sentence[5])
  #print(sentence[6])
  for(word in sentence)
    print(word) #goes through each word and in our list it allows us to have this run through
}

#generic form of a form loop
#for(variable in collection) {
#  do things with variable
#}

len <-  0
vowels <- c("a", "e", "i", "o", "u")
for (v in vowels) {
  len <- len +1
}

#challenge time!!

ex_vec <- c(4,8,15,16,23,42)
total <- function(variable) {
  num_sum <- 0
  for (t in variable) {
    num_sum <- num_sum + t
  }
  return(num_sum)
}
total(ex_vec)



# write a funciton called analyze_all but it should take 1 argument and match the pattern we want to match


#so take existing code and use this code: analyze_all(inflammation)
