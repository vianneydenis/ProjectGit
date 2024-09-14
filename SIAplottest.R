#Basic operation

getwd()
setwd("D:/台大課程/112-2/穩定同位素")
siaplot<-read.table("SIA2.txt", TRUE , '\t' , '_')
library(ggplot2)

#C13與N15作圖
plot(d15N~d13C, data=siaplot)  

#每個物種N15的四分位圖
ggplot(siaplot, aes(x=reorder(Species,d15N,na.rm = TRUE), y=d15N))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title = element_text(size=rel(2.0)),
        axis.text = element_text(size=rel(1.0)),axis.text.x=element_text(angle=-90))


#C13與N15棲位重疊
ggplot(siaplot, aes(x=d13C,y=d15N,colour=Species))+
  geom_point()+
  stat_ellipse(level=0.4)+
  theme_bw()+
  theme(axis.title = element_text(size=rel(2.0)),
        axis.text = element_text(size=rel(1.5)))
