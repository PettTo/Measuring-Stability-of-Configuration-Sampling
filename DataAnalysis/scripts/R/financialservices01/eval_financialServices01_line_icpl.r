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

########## Automotive2 ############
setwd("C:/Users/t.pett/Documents/Repositories/Measuring-Stability-of-Configuration-Sampling/DataAnalysis/data/financialServices01/stability_csv/")
wd <- getwd()
show(wd)
### Preparations msoc data
msoc <- read.csv(file="./msoc/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA)) 
show(msoc)
msocRandom <- c(NaN,msoc$random)
msocIncling <- c(NaN,msoc$incling)
msocChvatal <- c(NaN,msoc$chvatal)
msocIcpl <- c(NaN,msoc$icpl)
### Preparations roic data
roic <- read.csv(file="./roic/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA))
show(roic)
roicRandom <- c(NaN,roic$Random)
roicIncling <- c(NaN,roic$IncLing)
roicChvatal <- c(NaN,roic$Chvatal)
roicIcpl <- c(NaN,roic$ICPL)
### Preparations icst data
icst <- read.csv(file="./icst/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA))
show(icst)
icstRandom <- c(NaN,icst$Random)
icstIncling <- c(NaN,icst$IncLing)
icstChvatal <- c(NaN,icst$Chvatal)
icstIcpl <- c(NaN,icst$ICPL)

### Preparation Placeholder
placeholder <- c(rep(NaN,length(roicIcpl)))

### preparation x and y
versionX <- c(1:length(icstIcpl)-1)
x <- c(1:length(icstIcpl)-1)
y <- c(1:length(icstIcpl)-1)

show(x)
show(y)
show(versionX)
show(icstIcpl)

pdf(file='./plots/financialServices01_line_icpl.pdf', width=9, height=6)
plot(x,y, las=2, ylim=c(0,1),main="FinancialServices01 Icpl Line plot",
      axes=FALSE, type="n"
)
lines(
  versionX,roicIcpl,
  type="b",
  lty=1,
  lwd=2,
  pch=16,
  cex=2,
  col= c(tubsRed)
)
lines(
  versionX,msocIcpl,
  type="b",
  lty=1,
  lwd=2,
  pch=17,
  cex=2,
  col= c(tubsOrange)
)
lines(
  versionX,icstIcpl,
  type="b",
  lty=1,
  lwd=2,
  pch=18,
  cex=2,
  col= c(tubsBlue)
)
axis(1, 
     pos=c(0,0), 
     at=c(0:length(placeholder)),
#     labels=c("","Random","Chvatal","ICPL","Icpl",
#              "","Random","Chvatal","ICPL","Icpl",
#             "","Random","Chvatal","ICPL","Icpl",
#              ""), 
     las=2)
axis(2, 
     pos=c(0,0), 
     at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
axis(3, 
      pos=c(1,0), 
      at=c(x),
      labels=FALSE, 
      las=1 )
axis(2, 
     pos=c(length(icstIcpl)-1,0), 
#     lwd.ticks = 0,
     labels = FALSE,
     at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
#     #labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
grid(col=c("black"),lty="dotted", lwd = 0.8)
par(xpd=TRUE)
legend(0,1.2, c("simple","exclusive","non exclusive"), pch = c(16,17,18), lty = c(1,1,1), col = c(tubsRed, tubsOrange, tubsBlue), cex=0.8, title="Legend")
dev.off()#