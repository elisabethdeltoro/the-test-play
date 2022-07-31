
library(networkD3)
library(curl)
library(jsonlite)

URL <- "https://raw.githubusercontent.com/elisabethdeltoro/the-test-play/main/show%20data/bothShows.JSON"
Energy <- jsonlite::fromJSON(URL)

#this code was adapted from an example about energy use and i am nothing if not too lazy to rename things almost no one will ever see
head( Energy$links )
head( Energy$nodes )


#color scale
my_color <- 'd3.scaleOrdinal(["#c5b9cd", "#c5b9cd", "#c5b9cd", "#c5b9cd", "#c5b9cd",  
                "#92A8D1", "#f7cac9", "#92A8D1", "#f7cac9", "#92A8D1", "#f7cac9", 
                "#92A8D1", "#f7cac9", "#92A8D1", "#f7cac9", "#92A8D1", "#f7cac9", 
                "#92A8D1", "#f7cac9",  "#c5b9cd", "#c5b9cd",  "#c5b9cd", "#c5b9cd",])'


# here's the plot
p <- sankeyNetwork(Links = Energy$links, Nodes = Energy$nodes, 
                   Source = "source", colourScale=my_color,
                   Target = "target", Value = "value", NodeID = "name",
                   units = "people", fontSize = 12, nodeWidth = 20
                   )

p
