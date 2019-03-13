library(leaflet)
library(sp)
library(iterators)
library(webshot)
library(htmlwidgets)

polys <- read.delim('polygons_formatted.txt')

#s1 <- polys[1,1]
s1 <- polys
s1 <- as.list(levels(s1[1,1]))
c1 <- chartr('()[]', '    ', s1[1])

#l1 <- lapply(s1, function(x) chartr('()[]', '    ', s1[x]))

madd <- matrix(as.numeric(strsplit(c2, ",")[[1]]), ncol = 2, byrow = TRUE)
#c1 <- gsub("\\[", "(", s1[3,1])
#c1 <- gsub("\\]", ")", c1)
#c1 <- chartr('[]', '()', s1)
m1 <- matrix(as.numeric(strsplit(c1,",")[[1]]), ncol=2, byrow = TRUE)

plist <- list()

for (j in s1){
    k = chartr('()[]', '    ', j[1])
    k = matrix(as.numeric(strsplit(k,",")[[1]]), ncol=2, byrow = TRUE)
    plist[[length(plist)+1]] <- k
}

m2 <- matrix(as.numeric(strsplit(plist,",")[1]), ncol=2, byrow = TRUE)

#pj <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")
#df <- spTransform(polys, pj)

map <- leaflet() %>%
    addMapPane("bg_map", zIndex=410) %>%
    addMapPane("polygons", zIndex=420) %>% 
    addTiles(options=pathOptions(pane="bg_map")) 
# %>% 
    # addPolygons(color="red", weight=3, smoothFactor=0.5, opacity=1.0, options=pathOptions(pane="polygons")) %>%
    # addPolygons(data=madd, color="red", weight=3, smoothFactor=0.5, opacity=1.0, options=pathOptions(pane="polygons"))
# i <- 1

    for (j in plist){
        # while (i<=4){
        map <- map %>% addPolygons(data=j, color="red", weight=2, smoothFactor=0.5, fillColor= "transparent", options=pathOptions(pane="polygons"))
    #     i = i+1
    #     break
    # }
}
     
