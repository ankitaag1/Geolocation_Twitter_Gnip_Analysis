# Geolocation_Twitter_Gnip_Analysis
R code to extract and plot geolocation coordination on world map from Twitter data extracted through GNIP

This repo contains two R files.

The file **'extract_geocordinates.R'** extracts the geocordinates of Twitter users within the JSON data downloaded through Global Network of Internet Protocols (GNIP). Please enter the downloaded JSON file name in the line: **con <- fromJSON('')**

The file **'plot_geocordinates.R'** plots the extracted geocordinates of the world map. Please pass the Google Maps Platform API key in the line: **set_key("")**
