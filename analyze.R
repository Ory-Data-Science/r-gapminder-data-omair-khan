# read a csv file, plot data
# columns = days
# rows = patients

analyze <- function(filename) {
  # Plots the mean, min & max
  # Input is a csv file
  dat <- read.csv(filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}
analyze_all <- function(text_pattern) {
  filenames <- list.files(path = "data", pattern = text_pattern, full.names = TRUE)
  #analyze("data/inflammation-01.csv")
  analyze(f)
}

#filenames <- list.files(path = "data", pattern = "inflammation", full.names = TRUE)
#analyze("data/inflammation-01.csv")

#for (f in filenames){
 # print(f)
  #analyze(f)
#}

# write a function called analyze_all

pdf("inflammation-01.pdf")
analyze("data/inflammation-01.csv")
dev.off()
?dev.off


