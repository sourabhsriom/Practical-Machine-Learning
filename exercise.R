exercise = function(){
  
  column = c(1:7)
  data = read.csv("pml-training.csv", na.strings = c("", "NA"))
  
  
  for(i in 1:160){
    
  #  print(sum(is.na(data[,i])) > 1000)
    
    if(sum(is.na(data[,i])) > nrow(data)/2){
      column = c(column,i)
    }
  }
  newData = data[,-column]
}