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

########## BusyBox monthly ############
setwd("C:/Users/t.pett/Documents/Repositories/Measuring-Stability-of-Configuration-Sampling/DataAnalysis/data/busybox_monthlySnapshot/stability_csv/")
wd <- getwd()
show(wd)
### Preparations msoc data
msoc <- read.csv(file="./msoc/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA)) 
show(msoc)
msocRandom <- c(msoc$random)
msocIncling <- c(msoc$incling)
msocChvatal <- c(msoc$chvatal)
msocIcpl <- c(msoc$icpl)
### Preparations roic data
roic <- read.csv(file="./roic/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA))
show(roic)
roicRandom <- c(roic$random)
roicIncling <- c(roic$incling)
roicChvatal <- c(roic$chvatal)
roicIcpl <- c(roic$icpl)
### Preparations icst data
icst <- read.csv(file="./icst/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA))
show(icst)
icstRandom <- c(icst$random)
icstIncling <- c(icst$incling)
icstChvatal <- c(icst$chvatal)
icstIcpl <- c(icst$icpl)

### Preparation Placeholder
placeholder <- c(rep(NaN,length(roicIncling)))

pdf(file='./plots/busybox_monthly_box.pdf', width=9, height=6)
boxplot(roicRandom, roicChvatal, roicIcpl, roicIncling, placeholder,
        msocRandom, msocChvatal, msocIcpl, msocIncling, placeholder,
        icstRandom, icstChvatal, icstIcpl, icstIncling,
      las=2, ylim=c(0,1),main="Busybox Boxplot",
     axes=FALSE,
     #par(mar = c(7, 8, 6, 2) + 0.1),
     #pch=c(19,19,19,17,17,17),
     #col=c(rep(tubsBlue,length(incling)), rep(tubsRed,length(random))),
     col=c(tubsBlue, tubsRed, tubsPurple, tubsOrange, tubsYellow,
           tubsBlue, tubsRed, tubsPurple, tubsOrange, tubsYellow,
           tubsBlue, tubsRed, tubsPurple, tubsOrange
           ),
     cex=c(1.3)
)
axis(1, 
     pos=c(0,0), 
     at=c(0:15),
     labels=c("","Random","Chvatal","ICPL","IncLing","",
              "Random","Chvatal","ICPL","IncLing","",
              "Random","Chvatal","ICPL","IncLing",""
              ), 
     las=2)
axis(2, 
     pos=c(0,0), 
     at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
axis(3, 
     pos=c(1,0), 
     at=c(0,2.5,7.5,12.5,15),
     labels=c("","simple matching","1:1 Matching","N:M Matching",""), 
     las=1 )
axis(2, 
     pos=c(5,0), 
     lwd.ticks = 0,
     labels = FALSE,
     #at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     #labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
axis(2, 
     pos=c(10,0), 
     lwd.ticks = 0,
     labels = FALSE,
     #at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     #labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
axis(2, 
     pos=c(15,0), 
     lwd.ticks = 0,
     labels = FALSE,
     #at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     #labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
grid(col=c("gray60"),lty="dotted", lwd = 0.6)
dev.off()#