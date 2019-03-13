# library(ggmap)
# 
# register_google("AIzaSyCHrtY-M0rk47MHlAFbdJKviFoVlUW4KO8")
# 
# Longitude <- c(6.486318,7.290372,8.573611,6.811188,6.486318)
# Latitude <- c(46.47924,46.15687,47.40744,46.99614,46.47924)
# mydata <- as.data.frame(cbind(Longitude,Latitude))
# mydata
# swiss <- get_map("Brazil",zoom=4)
# ggmap(swiss)+
#     geom_polygon(data=mydata,aes(x=Longitude,y=Latitude),alpha=0.3,colour="red",fill="red")+
#     geom_path(data=mydata,aes(x=Longitude,y=Latitude),colour="white",alpha=0.7,size=3)+
#     annotate("point",x=7.257885,y=46.79049,size=7)+
#     annotate("text", x=7.257885,y=46.79049,label="Golden Swiss Area",colour="white",size=3)

library(maps)
library(mapdata)
library(sf)
map('worldHires')
br <- map('worldHires', 'BR')
