#Since the Date and Time columns are separate they will need to be combined within the dataset in order to convert them to the correct format to complete the appropriate analysis. Here is an example of how this can be done in R:#
#Creating one date+time column called DateTime (replace 'yourdataframe' with the name of your data frame):#
yourdataframe <-cbind(yourdataframe,paste(yourdataframe$Date,yourdataframe$Time), stringsAsFactors=FALSE)
colnames(yourdataframe)[10] <-"DateTime"
yourdataframe <- yourdataframe[,c(ncol(yourdataframe), 1:(ncol(yourdataframe)-1))]
head(yourdataframe)
#Converting date and Time format (replace 'yourdataframe' with the name of your data frame):#
yourdataframe$DateTime <- strptime(yourdataframe$DateTime, "%d/%m/%Y %H:%M:%S")
yourdataframe$Date <- as.Date(HHPC$Date, "%d/%m/%Y")
str(yourdataframe)
#You might also use some of the functionality from DPLYR and TIDYR to perform the same task. Select (), Unite() and Mutate() are a few (of many) functions that might be helpful to you in performing this step.#
#Now that you have converted the date and time appropriately you can begin to obtain some information from the data set.