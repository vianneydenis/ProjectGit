setwd('D:/台大課程/113-1/r生態資料/data')

fish<-read.table('reef_fish.txt', header = T, sep='\t', dec='.')

barplot(fish$richness, 
        main="Top 10 reef fish Richness (Allen, 2000)", 
        horiz=TRUE, 
        names.arg=fish$country, 
        cex.names=0.5, las=1)