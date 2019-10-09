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
setwd("C:/Users/t.pett/Documents/Repositories/Measuring-Stability-of-Configuration-Sampling/DataAnalysis/data/automotive02/stability_csv/")
wd <- getwd()
show(wd)
### Preparations msoc data
msoc <- read.csv(file="./msoc/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA)) 
show(msoc)
msocRandom <- c(msoc$random)
msocIncling <- c(msoc$Incling)
### Preparations roic data
roic <- read.csv(file="./roic/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA))
show(roic)
roicRandom <- c(roic$random)
roicIncling <- c(roic$Incling)
### Preparations icst data
icst <- read.csv(file="./icst/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA))
show(icst)
icstRandom <- c(icst$Random)
icstIncling <- c(icst$IncLing)

### Preparation Placeholder
placeholder <- c(rep(NaN,length(roicIncling)))

### preparation for scatter
y <- c(
  placeholder,
  roicRandom,
  roicIncling,
  placeholder,
  msocRandom,
  msocIncling,
  placeholder,
  icstRandom,
  icstIncling,
  placeholder
)
x <- c(
  rep(0,length(placeholder)),
  rep(1,length(roicRandom)),
  rep(2,length(roicIncling)),
  rep(3,length(placeholder)),
  rep(4,length(msocRandom)),
  rep(5,length(msocIncling)),
  rep(5,length(placeholder)),
  rep(7,length(icstRandom)),
  rep(8,length(icstIncling)),
  rep(9,length(icstIncling))
)

show(x)
show(y)

pdf(file='./plots/automo_scatter.pdf', width=9, height=6)
plot(x,y, las=2, ylim=c(0,1),main="Automotive02 Scatterplot",
      axes=FALSE,
      #par(mar = c(7, 8, 6, 2) + 0.1),
      #pch=c(19,19,19,17,17,17),
      #col=c(rep(tubsBlue,length(incling)), rep(tubsRed,length(random))),
      pch=c(
        rep(0,length(placeholder)),
        rep(2,length(roicRandom)),
        rep(5,length(roicIncling)),
        rep(0,length(placeholder)),
        rep(2,length(msocRandom)),
        rep(5,length(msocIncling)),
        rep(0,length(placeholder)),
        rep(2,length(icstRandom)),
        rep(5,length(icstIncling)),
        rep(0,length(placeholder))
            ),
      col=c(
        rep(tubsBlue,length(placeholder)),
        rep(tubsBlue,length(roicRandom)),
        rep(tubsBlue,length(roicIncling)),
        rep(tubsBlue,length(placeholder)),
        rep(tubsRed,length(msocRandom)),
        rep(tubsRed,length(msocIncling)),
        rep(tubsBlue,length(placeholder)),
        rep(tubsOrange,length(icstRandom)),
        rep(tubsOrange,length(icstIncling)),
        rep(tubsOrange,length(placeholder))
        ),
      cex=c(
        rep(1.3,length(placeholder)),
        rep(1.3,length(roicRandom)),
        rep(1.3,length(roicIncling)),
        rep(1.3,length(placeholder)),
        rep(1.3,length(msocRandom)),
        rep(1.3,length(msocIncling)),
        rep(1.3,length(placeholder)),
        rep(1.3,length(icstRandom)),
        rep(1.3,length(icstIncling)),
        rep(1.3,length(placeholder))
        )
)
axis(1, 
     pos=c(0,0), 
     at=c(0:9),
     labels=c("","Random","IncLing","","Random","IncLing","","Random","IncLing",""), 
     las=2)
axis(2, 
     pos=c(0,0), 
     at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
axis(3, 
     pos=c(1,0), 
     at=c(0,1.5,4.5,7.5,9),
     labels=c("","simple matching","1:1 Matching","N:M Matching",""), 
     las=1 )
axis(2, 
     pos=c(3,0), 
     lwd.ticks = 0,
     labels = FALSE,
     #at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     #labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
axis(2, 
     pos=c(6,0), 
     lwd.ticks = 0,
     labels = FALSE,
     #at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     #labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
axis(2, 
     pos=c(9,0), 
     lwd.ticks = 0,
     labels = FALSE,
     #at=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),
     #labels=c("0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"), 
     las=1 )
grid(col=c("gray60"),lty="dotted", lwd = 0.6)
dev.off()#