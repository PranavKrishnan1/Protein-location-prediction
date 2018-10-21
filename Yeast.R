##library statements
library(caret)
library(xlsx)

## Getting data from the database and saving it locally.
url="http://archive.ics.uci.edu/ml/machine-learning-databases/yeast/yeast.data"
if(!file.exists("yeast.xlsx")){write.xlsx2(data.frame(matrix(ncol=0,nrow=0)),file="yeast.xlsx")}
download.file(url,"yeast.xlsx")

## Loading dataset into R.
yeastdata = read.csv("yeast.xlsx",sep = " ",header = F)
## Unable to set sep ="  " as it is larger than a byte.

yeastdf=na.omit(yeastdata[c(3,5,7,9,11,13,15,17,19)])

## Display structure of the dataset
str(yeastdf)

## Dividing data set into 2 to train and test alogrithm.
set.seed(2)
intrain = createDataPartition(y = yeastdf$V19, p=.7, list = FALSE)
training = yeastdf[intrain,]
testing = yeastdf[-intrain,]

## Checking dimension.
dim(training)
dim(testing)

## Checking for NA's, just in case.
anyNA(yeastdf)

## Converting the character string into factors.
training[["V19"]] = factor(training[["V19"]])

## Training 
set.seed(82)
trctrl = trainControl(method = "repeatedcv", number = 10, repeats = 3)
knn_fit = train(V19 ~., data = training, method = "knn",
                trControl=trctrl,
                preProcess = c("center", "scale"),
                tuneLength = 10)

plot(knn_fit)  
