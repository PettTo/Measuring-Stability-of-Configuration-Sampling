########## Color Def ############
# tubs blue light
tubsBlueLight <- rgb(102,180,211,255, maxColorValue = 255)
# tubs green light
tubsGreenLight <- rgb(172,193,58,255, maxColorValue = 255)
# tubs orange
tubsOrange <- rgb(255,109,0,255, maxColorValue = 255)
# tubs purple
tubsPurple <- rgb(138,48,127,255, maxColorValue = 255)
# tubs yellow
tubsYellow <- rgb(255,200,42,255, maxColorValue = 255)

tubsRed <- rgb(190,30,60,255, maxColorValue = 255)
#TUBS blue dark
tubsBlue <- rgb(0,63,87,255, maxColorValue = 255)

setwd("C:/Users/t.pett/Documents/Research/2019/Sampling_Stability_Paper/stability-of-configuration-testing-in-ci/DataAnalysis")
wd <- getwd()
show(wd)

########## Automotive2 ############
CsvData <- read.csv(file="./data/busybox_linux/stability_csv/combined.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA)) 
Data <- data.frame(CsvData)
show(Data)

### preparation for scatter
chvatal <- c(Data$Chvatal)
icpl <- c(Data$ICPL)
random <- c(Data$Random)
incling <- c(Data$IncLing)
y <- c(rep(NaN,length(incling)),chvatal,icpl,incling,random,rep(NaN,length(random)))
x <- c(rep(0,length(incling)),rep(1,length(chvatal)),rep(2,length(icpl)),rep(3,length(incling)),rep(4,length(random)),rep(5,length(random)))

show(x)
show(y)

pdf(file='./data/busybox_linux/stability_csv/plots/busybox_scatter.pdf', width=9, height=6)
plot(x,y, las=2, ylim=c(0,1.1),main="BusyBox Scatterplot",
     axes=FALSE,
     #par(mar = c(7, 8, 6, 2) + 0.1)#,
     #pch=c(19,19,19,17,17,17)#,
     #col=c(rep(tubsBlue,length(incling)), rep(tubsRed,length(random)))
     pch=c(rep(15,length(chvatal)),rep(16,length(icpl)),rep(17,length(incling)), rep(18,length(random))),
     col=c(rep(tubsOrange,length(chvatal)),rep(tubsGreenLight,length(icpl)),rep(tubsBlueLight,length(incling)), rep(tubsRed,length(random))),
     cex=c(rep(1,length(chvatal)),rep(1,length(icpl)),rep(1,length(incling)), rep(1,length(random)))
)
grid(col=c("gray60"),lty="dotted", lwd = 0.4)
axis(1, 
     pos=c(0,0), 
     at=c(0:5),
     labels=c(" ","Chvatal","ICPL","IncLing","Random"," "), 
     las=2)
axis(2, 
     pos=c(0,0), 
     at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1),
     labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1",""), 
     las=1 )
dev.off()


pdf(file='./data/busybox_linux/stability_csv/plots/busybox_scatterZoomed.pdf', width=9, height=6)
plot(x,y, las=2, ylim=c(0.5,1.1),main="BusyBox Scatterplot",
     axes=FALSE,
     #par(mar = c(7, 8, 6, 2) + 0.1)#,
     #pch=c(19,19,19,17,17,17)#,
     #col=c(rep(tubsBlue,length(incling)), rep(tubsRed,length(random)))
     pch=c(rep(15,length(chvatal)),rep(16,length(icpl)),rep(17,length(incling)), rep(18,length(random))),
     col=c(rep(tubsOrange,length(chvatal)),rep(tubsGreenLight,length(icpl)),rep(tubsBlueLight,length(incling)), rep(tubsRed,length(random))),
     cex=c(rep(1,length(chvatal)),rep(1,length(icpl)),rep(1,length(incling)), rep(1,length(random)))
)
grid(col=c("gray60"),lty="dotted", lwd = 0.4)
axis(1, 
     pos=c(0,0), 
     at=c(0:5),
     labels=c(" ","Chvatal","ICPL","IncLing","Random"," "), 
     las=2)
axis(2, 
     pos=c(0,0), 
     at=c(0.5,0.6,0.7,0.8,0.9,1,1.1),
     labels=c("0.5","0.6","0.7","0.8","0.9","1",""), 
     las=1 )
dev.off()




pdf(file='./data/busybox_linux/stability_csv/plots/busybox_box.pdf', width=9, height=6)
#svg(file='./data/automotive02/stability_csv/plots/automo_algo_stab_no_preservative.svg', width=9, height=6)
boxplot(Data, las = 2, ylim=c(0,1),main="BusyBox Boxplot",
par(mar = c(7, 5, 6, 2) + 0.1),
col=c(
tubsOrange,tubsGreenLight,tubsBlueLight,tubsRed),
at = c(
1,2,3,4), 
names = c(
"Chvatal","ICPL","IncLing","Random")
) 
grid(col=c("gray60"),lty="dotted", lwd = 0.4)
par(xpd=TRUE)
#legend(
#0.15,1.195,
#"topleft",
#inset=.0, title="Stability Metrics",
 #  c("ROIC","MSOC"), 
#fill=c(tubsBlue,tubsRed),
#cex=0.8,
#horiz=TRUE,
#text.width=4.38)
#mtext("Sampling Algorithms", side=1, line=6)
#mtext("Stability in %", side=2, line=3)
#mtext("Stability Evaluation for Automotive02", side=3, line=3, cex=1.5)
dev.off()
