#read a csv file, plot data
#columns = days
# rows = patients

dat <-  read.csv("data/inflammation-01.csv", header = FALSE)

avg_day_inflammation <- apply(dat, 2, mean)
avg_patient_inflammation <-  apply(dat, 1, mean)
plot(avg_day_inflammation)
plot(avg_patient_inflammation)

analyze <-function(filename){
  #plots the mean, min & max
  #input is a csv file
  dat <-  read.csv(filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}


