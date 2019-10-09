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
msocRandom <- c(msoc$random)
msocIncling <- c(msoc$incling)
msocChvatal <- c(msoc$chvatal)
msocIcpl <- c(msoc$icpl)
### Preparations roic data
roic <- read.csv(file="./roic/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA))
show(roic)
roicRandom <- c(roic$Random)
roicIncling <- c(roic$IncLing)
roicChvatal <- c(roic$Chvatal)
roicIcpl <- c(roic$ICPL)
### Preparations icst data
icst <- read.csv(file="./icst/combined_procedures.csv",header=TRUE, sep=";",colClasses=c("NULL",NA,NA,NA,NA))
show(icst)
icstRandom <- c(icst$Random)
icstIncling <- c(icst$IncLing)
icstChvatal <- c(icst$Chvatal)
icstIcpl <- c(icst$ICPL)

### Preparation Placeholder
placeholder <- c(rep(NaN,length(roicIncling)))

### preparation for scatter
y <- c(
  placeholder,
  roicRandom,
  roicChvatal,
  roicIcpl,
  roicIncling,
  placeholder,
  msocRandom,
  msocChvatal,
  msocIcpl,
  msocIncling,
  placeholder,
  icstRandom,
  icstChvatal,
  icstIcpl,
  icstIncling,
  placeholder
)
x <- c(
  rep(0,length(placeholder)),
  rep(1,length(roicRandom)),
  rep(2,length(roicChvatal)),
  rep(3,length(roicIcpl)),
  rep(4,length(roicIncling)),
  
  rep(5,length(placeholder)),
  rep(6,length(msocRandom)),
  rep(7,length(msocChvatal)),
  rep(8,length(msocIcpl)),
  rep(9,length(msocIncling)),
  
  rep(10,length(placeholder)),
  rep(11,length(icstRandom)),
  rep(12,length(icstChvatal)),
  rep(13,length(icstIcpl)),
  rep(14,length(icstIncling)),
  
  rep(15,length(placeholder))
)

show(x)
show(y)

pdf(file='./plots/financialServices01_scatter.pdf', width=9, height=6)
plot(x,y, las=2, ylim=c(0,1),main="FinancialServices Scatterplot",
      axes=FALSE,
      #par(mar = c(7, 8, 6, 2) + 0.1),
      #pch=c(19,19,19,17,17,17),
      #col=c(rep(tubsBlue,length(incling)), rep(tubsRed,length(random))),
      pch=c(
        rep(0,length(placeholder)),
        rep(1,length(roicRandom)),
        rep(2,length(roicChvatal)),
        rep(5,length(roicIcpl)),
        rep(6,length(roicIncling)),
        
        rep(0,length(placeholder)),
        rep(1,length(msocRandom)),
        rep(2,length(msocChvatal)),
        rep(5,length(msocIcpl)),
        rep(6,length(msocIncling)),
        
        rep(0,length(placeholder)),
        rep(1,length(icstRandom)),
        rep(2,length(icstChvatal)),
        rep(5,length(icstIcpl)),
        rep(6,length(icstIncling)),
        
        rep(0,length(placeholder))
            ),
      col=c(
        rep(tubsBlue,length(placeholder)),
        rep(tubsBlue,length(roicRandom)),
        rep(tubsBlue,length(roicChvatal)),
        rep(tubsBlue,length(roicIcpl)),
        rep(tubsBlue,length(roicIncling)),
        
        rep(tubsBlue,length(placeholder)),
        rep(tubsRed,length(msocRandom)),
        rep(tubsRed,length(msocChvatal)),
        rep(tubsRed,length(msocIcpl)),
        rep(tubsRed,length(msocIncling)),
        
        rep(tubsBlue,length(placeholder)),
        rep(tubsOrange,length(icstRandom)),
        rep(tubsOrange,length(icstChvatal)),
        rep(tubsOrange,length(icstIcpl)),
        rep(tubsOrange,length(icstIncling)),
        
        rep(tubsOrange,length(placeholder))
        ),
      cex=c(
        rep(1.3,length(placeholder)),
        rep(1.3,length(roicRandom)),
        rep(1.3,length(roicChvatal)),
        rep(1.3,length(roicIcpl)),
        rep(1.3,length(roicIncling)),
        
        rep(1.3,length(placeholder)),
        rep(1.3,length(msocRandom)),
        rep(1.3,length(msocChvatal)),
        rep(1.3,length(msocIcpl)),
        rep(1.3,length(msocIncling)),
        
        
        rep(1.3,length(placeholder)),
        rep(1.3,length(icstRandom)),
        rep(1.3,length(icstChvatal)),
        rep(1.3,length(icstIcpl)),
        rep(1.3,length(icstIncling)),
        
        rep(1.3,length(placeholder))
        )
)
axis(1, 
     pos=c(0,0), 
     at=c(0:15),
     labels=c("","Random","Chvatal","ICPL","IncLing",
              "","Random","Chvatal","ICPL","IncLing",
              "","Random","Chvatal","ICPL","IncLing",
              ""), 
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