library(googleway)
data<-read.csv("geolocations.csv")
#enter Google Maps Platform API key
set_key("")
google_map() %>%
  add_circles(
    data = new, lon = "longitude", lat = "latitude")