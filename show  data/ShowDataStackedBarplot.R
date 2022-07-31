# library
library(ggplot2)

cuteBlue <- "#92A8D1"
cutePink <- "#f7cac9"
cutePurple <- "#c5b9cd"

onlineBlue <- c(43, 26, 54, 44, 44, 20, 58, 40, 52)
onlineYellow <- c(19, 36, 8, 18, 18, 42, 4, 22, 10 )
irlBlue <- c(17, 17, 39, 27, 28, 9, 37, 29, 36)
irlYellow <- c(23, 23, 1, 13, 12, 31, 3, 11, 4)

irlAll <- c(17, 23, 17, 23, 39, 1, 27, 13, 28, 12, 9, 31, 37, 3, 29, 11, 36, 4)
onlineAll <- c(43, 19, 26, 36, 54, 8, 44, 18, 44, 18, 20, 42, 58, 4, 40, 22, 52, 10)

Questions <- c(rep("Q1" , 2), rep("Q2" , 2), rep("Q3" , 2) , rep("Q4" , 2), rep("Q5" , 2) , rep("Q6" , 2) , rep("Q7" , 2) , rep("Q8" , 2) , rep("Q9" , 2) )
Choices <- rep(c("blue choices" , "yellow choices"), 9 )
Selections<- abs(irlAll) 
data <- data.frame(Questions, Choices, Selections)

ggplot(data, aes(fill=Choices, y=Selections, x=Questions)) + 
  ggtitle("Online Show Choices") +
  geom_bar(position="dodge", stat="identity", width=0.5) +
  scale_fill_manual(values = c(cuteBlue, cutePink) ) 

