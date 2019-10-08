

# Styles for help buttons and boxes
myButtonSty     <- "height:22px; padding-top:0px; margin-top:-5px; float:right;
color: #fff; background-color: #337ab7;
border-color: #2e6da4"
myHelpButtonSty <- "background-color: #694D75;font-size:14px;"
myBoxSty        <- "cursor:pointer; border: 3px solid blue;
padding-right:0px;padding-left:0px;"

# myCAUSE ======================
causeHelpButton <- function() {
  actionButton(inputId="causeHelp", label="?",style=myButtonSty)
  }
myCauseSelect <- function() {
  dottedSelectInput("myCAUSE", HTML("Cause of Death:"), choices=fullList)    # , selected="0"
  }

# myLHJ ======================
myLHJSelect <- function() {
  selectInput("myLHJ","County/State:",choices=lList,selected=STATE)
  }

# myGeo ======================
myGeoSelect <- function() {
  selectInput("myGeo","Geographic Level:",
              choices=c("County","Community","Census Tract"))
  }

# myYear ======================
myYearSlider <- function() {
  sliderInput("myYear","Year:",value=maxYear,min=2001,max=maxYear,animate = TRUE,
              round=TRUE,sep="",step=1)  #can use value=c(2017,2017)
  }

# mySex ======================
mySexButtons <- function() {
  radioButtons("mySex", "Sex:", choices=c("Total","Female","Male"))
  }

# myLev ======================
levelHelpButton <- function() {
  actionButton( "levelHelp", label="?",style=myButtonSty)
  }
myLevButtons <- function() {
  radioButtons("myLev", "Levels to show:", choices=c("Top Level" = "lev1","Public Health" = "lev2","Detail" = "lev3"))
  }

# myStateCut ======================
statecutHelpButton <- function() {
  actionButton("stateCutHelp", label="?", style=myButtonSty)
  br()  #add br(), here to fix spacing, but does not yet....
  }
myStateCutCheckBox <- function() {
  checkboxInput("myStateCut", "State-based cutpoints", value=TRUE)
  }

# myN ======================
myNInput <- function() {
  numericInput( "myN",  "How Many:", value=10,min=1,max= 50)
  }

# myMeasure--uses deathMeasures_Dropdown because the function uses short names in it (?)
measureHelpButton <- function() {
  actionButton( "measureHelp", label="?",style=myButtonSty)
  }
myMeasureButtons <- function() {
  radioButtons(  "myMeasure",  "Measure:", choices=deathMeasures_Dropdown, selected="YLLper")
  }

# myMeasureShort ======================
#actionButton( "measureHelp", label="?",style=myButtonSty) ,
myMeasureShortInput <- function() {
  selectInput( "myMeasureShort",  "Measure Sort Order:", choices=dMNames_short, selected="YLL Rate per 100,000 population")
  }


# myYearGrouping ======================
myYearGroupingButtons <- function() {
  radioButtons("myYearGrouping", "Years to Group:", choices=c("One","Three","Five"))
  }

# myCutSystem ======================
cutmethodHelpButton <- function() {
  actionButton("cutmethodHelp", label="?",style=myButtonSty)
  }
myCutSystemButtons <- function() {
  radioButtons( "myCutSystem","Cut-point method:", choices=c("quantile","fisher"))
  }  # pretty

# myLabName ======================
myLabNameCheckBox <- function() {
  checkboxInput("myLabName",  "Place Names", value=FALSE)
  }

# myCI ======================
myCICheckBox <- function() {
  checkboxInput("myCI",       "95% CIs", value=FALSE)
  }

# myRefLine ======================
myRefLineCheckBox <- function() {
  checkboxInput("myRefLine",  "Reference Line", value=FALSE)
  }


# myLogTrans ======================
myLogTransCheckBox <- function() {
  checkboxInput("myLogTrans",  "Log Transform of Y Axis", value=FALSE)
  }

# myMultiRace ======================
myMultiRaceCheckBox <- function() {
  checkboxInput("myMultiRace",  "Include Multirace Line", value=FALSE)
  }

# myX ======================
myXSelectInput <- function() {
  selectInput("myX", "Social Determinant of Health Variable:", choices=sdohVec)
  }

# myOSHPDtype ======================
myOSHPDtypeSelectInput <- function() {
  selectInput( "myOSHPDtype", "Measure Sort Order:", choices = hMNames_short)
  }

# myOSHPDtype-mdcdrg ======================
myOSHPDtype_mdcdrgSelectInput <- function() {
  selectInput( "myOSHPDtype_mdcdrg", "Measure Sort Order:", choices = hMDCDrop_down)
  }

# myVar(ICD/MDC/DRG) ======================
myVarSelectInput <- function() {
  selectInput("myVar", "Variable:", choice = MDC_DRG_ICD_Dropdown)
  }

# myPrimetype ======================
myPrimeTypeSelectInput <- function() {
  selectInput("myprimetype", "Variable", choice = c("any", "primary"))
  }

# IHME inputs ======================
# "arrows", "riskByCause"
source(paste0(myPlace,"/myFunctions/widgetsIHME.R"))




# Home ==================


INPUTS <- c("display","yearRange","level","year","sex","metric","measure","causeHelp","myCAUSE","myLHJ","myGeo","myYear","mySex","levelHelp","myLev","stateCutHelp","myStateCut","myN","measureHelp","myMeasure","myMeasureShort","myYearGrouping","cutmethodHelp","myCutSystem","myLabName","myCI","myRefLine","myLogTrans","myMultiRace","myX","myOSHPDtype","myOSHPDtype_mdcdrg","myVar","myprimetype")

hideAllInputs <- function() {
  for (input in INPUTS) {
    hide(input)
  }
}

fC <- function(vec) {   # Same as int_fC() but for a character vector
  tRep <- length(vec)-1
  paste0("input.ID == '", vec, c(rep("'|",tRep),"'"), collapse="")
}

initializeWidgets <- function() {
  levelSliderInput()
  yearSliderInput()
  yearRangeSliderInput()
  displayButtonInput()
  sexButtonInput()
  metricButtonInput()
  measureSelectInput()
  causeHelpButton()
  myCauseSelect()
  myLHJSelect()
  myGeoSelect()
  # myGeo Help text
  conditionalPanel(condition = paste("(input.myGeo == 'Census Tract') & (",fC(c("interactiveMapTab","staticMapTab","hospitalMapTab")),")"),
                   helpText(h6(tractWarning,style="color:red"))
  )
  myYearSlider()
  mySexButtons()
  levelHelpButton()
  myLevButtons()
  statecutHelpButton()
  myStateCutCheckBox()
  myNInput()
  measureHelpButton()
  myMeasureButtons()
  myMeasureShortInput()
  myYearGroupingButtons()
  cutmethodHelpButton()
  myCutSystemButtons()
  myLabNameCheckBox()
  myCICheckBox()
  myRefLineCheckBox()
  myLogTransCheckBox()
  myMultiRaceCheckBox()
  # myMultiRace Help text
  conditionalPanel(condition = paste("(input.myMultiRace) & (",fC(c("raceTrendTab")),")"),
                   helpText(h6(multiRaceWarning,style="color:red"))
  )
  myXSelectInput()
  myOSHPDtypeSelectInput()
  myOSHPDtype_mdcdrgSelectInput()
  myVarSelectInput()
  myPrimeTypeSelectInput()
  # trendDownloadButtons()
  # mapDownloadButton()
  # rankCauseDownloadButton()
  
}

TAB_INPUTS <- list("homeTab"=c(),
                   "aboutTab"=c(),
                   "lifeExpectancyTab"=c("myLHJ"),
                   "interactiveMapTab"=c("causeHelp", "myCAUSE", "myLHJ", "myGeo", "mySex", "stateCutHelp", "myStateCut", "measureHelp", "myMeasure", "cutmethodHelp", "myCutSystem"),
                   "staticMapTab"=c("causeHelp", "myCAUSE", "myLHJ", "myGeo", "measureHelp", "myMeasure", "cutmethodHelp", "myCutSystem", "myLabName", "mySex", "stateCutHelp", "myStateCut"),
                   "rankByCauseTab"=c("myLHJ", "myYear", "mySex", "levelHelp", "myLev", "myN", "myMeasureShort"),
                   "rankByCauseAndSexTab"=c("levelHelp", "myLev", "myN", "measureHelp", "myMeasure"),
                   "rankByGeographyTab"=c("causeHelp", "myCAUSE", "myLHJ", "mySex", "measureHelp", "myMeasure", "myRefLine"),
                   "trendTab"=c("causeHelp", "myCAUSE", "myLHJ", "measureHelp", "myMeasure", "myYearGrouping"),
                   "ageTrendTab"=c("causeHelp", "myCAUSE", "myLHJ", "measureHelp", "myMeasure", "myLogTrans"),
                   "raceTrendTab"=c("causeHelp", "myCAUSE", "myLHJ", "myLogTrans", "myMultiRace"),
                   "raceDisparityTab"=c("causeHelp", "myCAUSE", "myLHJ"),
                   "educationTrendTab"=c("causeHelp", "myCAUSE", "myLHJ", "mySex", "measureHelp", "myMeasure", "myLogTrans"),
                   "dataTableTab"=c("myLHJ", "myYear"),
                   "socialDeterminantsTab"=c("causeHelp", "myCAUSE", "myGeo", "mySex", "measureHelp", "myMeasure", "myX"),
                   "hospitalDischargeTab"=c("myLHJ", "myGeo", "mySex", "myN", "myOSHPDtype"),
                   "MDC/DRGTab"=c("myLHJ", "mySex", "myN", "myOSHPDtype_mdcdrg", "myVar"),
                   "hospitalDischargePandDTab"=c("myLHJ", "mySex", "myVar", "myprimetype"),
                   "hospitalMapTab"=c("causeHelp", "myCAUSE", "myLHJ", "mySex"),
                   "arrowsTab"=c("display", "level", "measure", "yearRange", "sex", "metric"),
                   "riskByCauseTab"=c("level", "year", "sex", "metric", "measure"),
                   "techDocTab"=c(),
                   "otherLinksTab"=c()
)

showTabInputs2 <- function(tabID, myGeo='', myLHJ='', myMeasure='') {
  tab_inputs = get(tabID, TAB_INPUTS)
  for (input in INPUTS) {
    if (!(input %in% tab_inputs)) {
      hide(input)
    }
  }
  delay(500, for (input in tab_inputs) {show(input)})
  if (myGeo == 'County') {
    if ((tabID == "interactiveMapTab") | (tabID == "staticMapTab")) {show("myYear")}
  }
  if (tabID == "rankByGeographyTab") {
    if (myLHJ == 'CALIFORNIA') {show("myYear")}
    if ((myMeasure == 'cDeathRate') | (myMeasure == 'aRate')) {show("myCI")}
  }
}

showTabInputs <- function(tabID, myGeo, myLHJ, myMeasure) {
  if (tabID == "homeTab") {
  } else if (tabID == "aboutTab") {
  } else if (tabID == "lifeExpectancyTab") {
    show("myLHJ")
  } else if (tabID == "interactiveMapTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    show("myGeo")
    if (myGeo == 'County') {show("myYear")}
    show("mySex")
    show("stateCutHelp")
    show("myStateCut")
    show("measureHelp")
    show("myMeasure")
    show("cutmethodHelp")
    show("myCutSystem")
  } else if (tabID == "staticMapTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    show("myGeo")
    show("measureHelp")
    show("myMeasure")
    show("cutmethodHelp")
    show("myCutSystem")
    show("myLabName")
    if (myGeo == 'County') {show("myYear")}
    show("mySex")
    show("stateCutHelp")
    show("myStateCut")
  } else if (tabID == "rankByCauseTab") {
    show("myLHJ")
    show("myYear")
    show("mySex")
    show("levelHelp")
    show("myLev")
    show("myN")
    show("myMeasureShort")
  } else if (tabID == "rankByCauseAndSexTab") {
    show("levelHelp")
    show("myLev")
    show("myN")
    show("measureHelp")
    show("myMeasure")
  } else if (tabID == "rankByGeographyTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    if (myLHJ == 'CALIFORNIA') {show("myYear")}
    show("mySex")
    show("measureHelp")
    show("myMeasure")
    if ((myMeasure == 'cDeathRate') | (myMeasure == 'aRate')) {show("myCI")}
    show("myRefLine")
  } else if (tabID == "trendTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    show("measureHelp")
    show("myMeasure")
    show("myYearGrouping")
  } else if (tabID == "ageTrendTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    show("measureHelp")
    show("myMeasure")
    show("myLogTrans")
  } else if (tabID == "raceTrendTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    show("myLogTrans")
    show("myMultiRace")
  } else if (tabID == "raceDisparityTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
  } else if (tabID == "educationTrendTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    show("mySex")
    show("measureHelp")
    show("myMeasure")
    show("myLogTrans")
  } else if (tabID == "dataTableTab") {
    show("myLHJ")
    show("myYear")
  } else if (tabID == "socialDeterminantsTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myGeo")
    show("mySex")
    show("measureHelp")
    show("myMeasure")
    show("myX")
  } else if (tabID == "hospitalDischargeTab") {
    show("myLHJ")
    show("myGeo")
    show("mySex")
    show("myN")
    show("myOSHPDtype")
  } else if (tabID == "MDC/DRGTab") {
    show("myLHJ")
    show("mySex")
    show("myN")
    show("myOSHPDtype_mdcdrg")
    show("myVar")
  } else if (tabID == "hospitalDischargePandDTab") {
    show("myLHJ")
    show("mySex")
    show("myVar")
    show("myprimetype")
  } else if (tabID == "hospitalMapTab") {
    show("causeHelp")
    show("myCAUSE")
    show("myLHJ")
    show("mySex")
  } else if (tabID == "arrowsTab") {
    show("display")
    show("level")
    show("measure")
    show("yearRange")
    show("sex")
    show("metric")
  } else if (tabID == "riskByCauseTab") {
    show("level")
    show("year")
    show("sex")
    show("metric")
    show("measure")
  } else if (tabID == "techDocTab") {
  } else if (tabID == "otherLinksTab") {
  }
}


# Figure Download buttons - Currently conditional panels ---------------------------------------------------
# trendDownloadButtons <- function() {
#   downloadButton('trendPNG', 'Download Figure')
#   br()
#   br()
#   downloadButton('trendData', 'Download Data')
#   br()
#   br()
# }
# 
# mapDownloadButton <- function() {
#   downloadButton('mapFigure', 'Download Map')
# }
# 
# rankCauseDownloadButton <- function() {
#   downloadButton('rankCauseFigure', 'Download Figure')
#   br()
#   br()
# }
