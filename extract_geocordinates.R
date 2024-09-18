library(RJSONIO)
library(jsonlite)
#Enter the file path of the JSON file containing Twitter data downloaded from GNIP
con <- fromJSON('') 
open(con)
obj <- list()
index <- 1
while (length(line <- readLines(con, n = 1, warn = FALSE)) > 0) {
  obj[[index]] <- fromJSON(line)
  index <- index + 1
} 
close(con)
for(i in 1:length(obj)){
  a[i]<-lapply(obj[i], "[", c('gnip'))
  z<-unlist(a[i])
  long[i]<-c(z["gnip.profileLocations.geo.coordinates1"])
  lat[i]<-c(z["gnip.profileLocations.geo.coordinates2"])
  print(long[i])
  print(lat[i])
}
a1<-list(long)
b1<-list(lat)
c1<-as.data.frame(a1)
d1<-as.data.frame(b1)
rownames(c1)<-NULL
rownames(d1)<-NULL
names(c1)[1]<-paste("longitude")
names(d1)[1]<-paste("latitude")
write.csv(c1, file="longi.csv")
write.csv(d1, file="lati.csv")
mydata1 = read.csv("longi.csv", header=T)
mydata2 = read.csv("lati.csv", header=T)
myfulldata = merge(mydata1, mydata2)
new<-na.omit(myfulldata)
write.csv(new, file="geolocations.csv")