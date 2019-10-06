########## Color Def ############
# blue
chart1 <- rgb(0,105,180,255, maxColorValue = 255)
# green
chart2 <- rgb(148,241,143,255, maxColorValue = 255)
# orange
chart3 <- rgb(136,0,3,255, maxColorValue = 255)
# red
chart4 <- rgb(171,121,56,255, maxColorValue = 255)

tubsRed <- rgb(190,30,60,255, maxColorValue = 255)
#TUBS blue
tubsBlue <- rgb(64,126,151,255, maxColorValue = 255)

setwd("C:/Users/t.pett/Documents/Research/2019/Sampling_Stability_Paper/stability-of-configuration-testing-in-ci\DataAnalysis")
wd <- getwd()
show(wd)

########## Automotive2 ############
CsvData <- read.csv(file="./data/automotive02/stability_csv/combined.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA)) 
Data <- data.frame(CsvData)
show(Data)

### preparation for scatter
random <- c(Data$Random)
incling <- c(Data$IncLing)
y <- c(rep(NaN,length(incling)),incling,random,rep(NaN,length(random)))
x <- c(rep(0,length(incling)),rep(1,length(incling)),rep(2,length(random)),rep(3,length(random)))

show(x)
show(y)

pdf(file='./data/automotive02/stability_csv/plots/automo_scatter.pdf', width=9, height=6)
plot(x,y, las=2, ylim=c(0,1),main="Automotive02 Scatterplot",
     axes=FALSE,
     #par(mar = c(7, 8, 6, 2) + 0.1)#,
     #pch=c(19,19,19,17,17,17)#,
     #col=c(rep(tubsBlue,length(incling)), rep(tubsRed,length(random)))
     pch=c(rep(15,length(incling)), rep(16,length(random))),
     col=c(rep(tubsBlue,length(incling)), rep(tubsRed,length(random))),
     cex=c(rep(1,length(incling)), rep(1,length(random)))
)
grid(col=c("gray60"),lty="dotted", lwd = 0.4)
axis(1, 
     pos=c(0,0), 
     at=c(0:3),
     labels=c(" ","IncLing","Random"," "), 
     las=2)
axis(2, 
     pos=c(0,0), 
     at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
dev.off()

pdf(file='./data/automotive02/stability_csv/plots/automo_box.pdf', width=9, height=6)
#svg(file='./data/automotive02/stability_csv/plots/automo_algo_stab_no_preservative.svg', width=9, height=6)
boxplot(Data, las = 2, ylim=c(0,1),main="Automotive02 Boxplot",
par(mar = c(7, 5, 6, 2) + 0.1),
col=c(
tubsBlue,tubsRed),
at = c(
1,2), 
names = c(
"IncLing", "Random")
) 
grid(col=c("gray60"),lty="dotted", lwd = 0.4)
par(xpd=TRUE)
legend(
0.15,1.195,
#"topleft",
inset=.0, title="Stability Metrics",
   c("ROIC","MSOC"), 
fill=c(tubsBlue,tubsRed),
cex=0.8,
horiz=TRUE,
text.width=4.38)
mtext("Sampling Algorithms", side=1, line=6)
mtext("Stability in %", side=2, line=3)
#mtext("Stability Evaluation for Automotive02", side=3, line=3, cex=1.5)
dev.off()
