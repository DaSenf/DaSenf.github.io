---
title       : Pitch - Top 10 soccer teams
subtitle    : Week 4's Assignment
author      : Andreas Essbaumer
job         : Enthusiast
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Hello

My name is Andreas Essbaumer and these slides were created on 12th of January 2017

My app displays some very basic data which i constructed myself and contains information about the top 10 European soccer teams measured by the number of European Champions League titles they have won till today.

The data can be downloaded here:

https://github.com/DaSenf/Developing-Data-Products 


---

## Have a look at my leaflet map

If you follow the following link, you'll see my leafletmap:

https://dasenf.github.io/LeafletMap.html

This is the code i used:


```r
suppressWarnings(library(leaflet))
soccertab3l<- read.table("soccerdata.txt", sep=";", header = T)
col <- rep("red",nrow(soccertab3l))
col[soccertab3l$titlescount<10] <- "orange"
col[soccertab3l$titlescount<5] <- "yellow"
col[soccertab3l$titlescount<3] <- "green"
soccertab3l_wcolor <- data.frame(soccertab3l,col)
CLmap <- soccertab3l%>%     leaflet()%>%     addTiles()%>% 
    addCircleMarkers(popup = ~as.character(paste(sep="",link,trimws(as.character(club)))),weight=1,
                     radius = ~as.numeric(titlescount)*6,
                     color = ~col)
CLmap
```

---

## My shiny app 

My shiny app can be found here:

https://dasenf.shinyapps.io/European-Football-clubs/

You can change the style of the histogram in various AWESOME ways. Sometime Mozilla Firefox doens't display the plotly-plot correctly.
With Internet Explorer 11 or Chrome it should work though.


---

## Goodbye

Thank you for looking and reviewing my stuff.

Post me the link of your work in your comment and i'm happy to return the favor

I hope you enjoyed the courses as much as i did.

Best regards,
Andi


