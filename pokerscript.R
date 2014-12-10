library(plyr)
library(dplyr)
library(stringr)
library(caret)




foo<-lapply(train, FUN=as.factor)
boo<-as.data.frame(foo)
avmodel<-train(hand~., data=boo, method="avNNet")
Test<-as.data.frame(lapply(test, FUN=as.factor))



C5mod<-train(hand~., data=boo, method="C5.0Rules")

C5pred<-predict(C5mod, newdata=Test)


write.csv(C5Rulessub, "E:/kaggle/poker/C5rules.csv", row.names=F)