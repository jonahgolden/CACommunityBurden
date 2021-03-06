
if(1==2){
  myLHJ="Alameda" 
  myCause="E03"
  myMeasure = "aRate"
  mySex   = "Total"
  myLogTrans=FALSE
  myMultiRace = FALSE
  
   
}

nCut      <- 20
myMeasure <- "aRate"
myYearG3  <- "2016-2018"

raceTest <- datCounty_RE %>%  
              filter(raceCode != "Multi-NH") %>% 
              filter(Ndeaths > nCut ) %>%
              select(-YLL,-mean.age,-YLLper,-cDeathRate,-rateLCI,-rateUCI,-YLL.adj.rate)


raceTest2 <- raceTest %>% group_by(county,yearG3,sex,CAUSE) %>%
               mutate(bestRate = min(aRate),
                      bestSE   = aSE)  %>%
               filter(bestRate == aRate) %>%
               mutate(lowRace = raceCode) %>%
               select(-(Ndeaths:aSE),-raceCode)

   
raceTest <- left_join(raceTest,raceTest2,by=c("county","yearG3","sex","CAUSE")) %>%
                mutate(rateRatio = round(aRate/bestRate,1),
                       Ztest = (aRate - bestRate) / sqrt(aSE^2 + bestSE^2),
                       pValue = 1-pnorm(Ztest),
                       pMark = as.factor(ifelse(aRate==bestRate,"Lowest",ifelse(pValue < .01,"Statistically Higher","Not Statitically Different")))
                       ) 



disparity <- function(myLHJ="CALIFORNIA",myCause="A") {

myCex <- 1.6
myCol <- "blue"            #mycol <- rep("blue",nrow(dat.1))

dat.1 <- filter(raceTest,county == myLHJ,CAUSE == myCause, yearG3==myYearG3) %>%
         mutate(raceName = raceNameFull[match(raceCode,raceCodeFull)] )

if (nrow(dat.1)==0) stop("Sorry friend, but thank goodness there are none of those or all data are supressed because of SMALL NUMBERS")

myTit <- paste0(deathMeasuresNames[deathMeasures == myMeasure]," by Race/Ethnicity in ",myLHJ,", ",fullCauseList[fullCauseList[,"LABEL"]== myCause,"nameOnly"],", ",myYearG3)

myTit <-  wrap.labels(myTit,myWrapNumber)


dPlot <- ggplot(data=dat.1, aes(x=raceName, y=eval(parse(text=paste0(myMeasure))),fill=pMark)) +
   geom_bar(stat="identity") +
   theme_grey() +   #base_size = myBaseSize
   facet_grid(rows = vars(sex)) +
     scale_fill_manual("legend", values = c("Lowest" = "green", "Statistically Higher" = "red", "Not Statitically Different" = "blue")) +
   geom_errorbar(aes(ymin=aLCI, ymax=aUCI), width=.1, size=1, position=position_dodge(.9), color="gray") + 
   labs(y = deathMeasuresNames[deathMeasures == myMeasure], x="Race/Ethnicity") +
      theme(plot.title=element_text(family='', face='bold', colour=myTitleColor, size=myTitleSize),
         axis.title.y = element_blank(),
         axis.title.x = element_blank(),
         axis.text.y = element_text(size = myAxisSize),
         axis.text.x = element_text(size = myAxisSize),
      legend.title = element_blank(),
         legend.text = element_text(size = myLegendSize),
         strip.text = element_text(size = myAxisSize)) +
      labs(title =myTit)   # ,size=mySize1
   #legend.text = element_text(size = myLegendSize) +
      
   
 
 

myPlotly <- FALSE 
if (!myPlotly) dplot <- dPlot
if (myPlotly) dplot <- ggplotly(dPlot) 
                      

 
dPlot
 

 }
