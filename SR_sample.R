#install.packages('reticulate')
library('reticulate')
use_python("C:\\Users\\SHUBHI~1.BIR\\AppData\\Local\\Programs\\Python\\Python36\\python.exe")
#use_virtualenv('C:\\Users\\shubhi.birla\\sample_poc', required = TRUE)
#Py_SetPythonHome("C:\\Users\\SHUBHI~1.BIR\\AppData\\Local\\Programs\\Python\\Python36")
#dict_cap= dict(foo='bar',index=89)
Sys.setenv(PATH = "C:\\Users\\shubhi.birla\\AppData\\Local\\Programs\\Python\\Python36")

np<-import('numpy')
pd<- import('pandas')
inputdata <- pd$read_csv("C:\\Users\\shubhi.birla\\Desktop\\input.csv")
#for displaying python file result

source_python("C:\\Users\\shubhi.birla\\Desktop\\hi.py")
#input fields
rewa <- CalculateVariables(as.data.frame(inputdata))

rewa1 <- CalculateRewards(as.data.frame(inputdata))



getLookup(dict(foo='bar',index=89))


#Lookup field

#Premium<-np_array(inputdata$Premiumamount)
#PolicyNo<-np_array(inputdata$PolicyNo)
#Product<-np_array(inputdata$Product)
#IncrementDate<-np_array(inputdata$IncrementDate)
#DOB<-np_array(inputdata$DOB)
#SRD<-np_array(inputdata$SRD)
#Transactiontype<-np_array(inputdata$Transactiontype)
#Premiumfrequency<-np_array(inputdata$Premiumfrequency)
#Premiumescalation<-np_array(inputdata$Premiumescalation)

#rewa <- calculaterewards(Premium,PolicyNo,Product,IncrementDate,DOB,SRD,Transactiontype,Premiumfrequency,Premiumescalation)

rewa

#calculaterewards(rew)


