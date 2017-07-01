require(rCharts)
h1 <- hPlot(x = "birth.year_high", y = "total100",
            data = com_data,
            type = c("bubble"), #"spline"
            group = c("Author"),
            size = "n_total")
h1$title(text = "Prevalence of <i>H.pylori</i> in Japanese by birth year", align = "center")
h1$chart(zoomType = "xy")
h1$yAxis(min=0, max = 100, 
         title = list(text = "Persentage (%)"), tickInterval= 10, 
         scalable = TRUE)
h1$xAxis(title = list(text = "Birth year (1908 - 2003)")) #, 
#formatter = "function () {
#return Highcharts.numberFormat(this.value, 0, '', '');} // Remove the thousands sep?")
h1$legend(title = list(text = "Author, publish year"))
#h1$series(name = "LOWESS LINE", regression = TRUE, type = "loess")
h1$set(height = 700)
h1$exporting(enabled = T)
h1


h1$publish('bubbleplot', host = 'rpubs')
