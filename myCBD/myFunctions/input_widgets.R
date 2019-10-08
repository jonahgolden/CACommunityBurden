# Styles for help buttons and boxes
myButtonSty     <- "height:22px; padding-top:0px; margin-top:10px; float:right; margin-left:80%
color: #fff; background-color: #337ab7;
border-color: #2e6da4"
myHelpButtonSty <- "background-color: #694D75;font-size:14px;"
myBoxSty <- "cursor:pointer; border: 3px solid blue;
padding-right:0px;padding-left:0px;"

# tags$style(
#   ".sidebar {",
#   "float:left; padding: 0px; margin: 0px;",
#   "}" # display:inline-block; padding: 20px; margin-right: 20px;}" # width: 20%; height:100vh;"
# )

# Help Texts ---------------------------------------------

# Input Widgets ========================================================================================
hidden(
  # tabHelp =====================
  
  
  # myCAUSE ======================

  actionButton(inputId="causeHelp", label="?",style=myButtonSty),
  dottedSelectInput("myCAUSE", HTML("Cause of Death:"), choices=fullList),    # , selected="0"

  # myLHJ ======================
  selectInput("myLHJ","County/State:",choices=lList,selected=STATE),
  
  # myGeo ======================
  selectInput("myGeo","Geographic Level:",
              choices=c("County","Community","Census Tract")),
  # helpText
  div(id = "myGeoHelpText", helpText(h6(tractWarning,style="color:red; float:left; margin: 20px;"))),
  
  # myYear ======================
  sliderInput("myYear","Year:",value=maxYear,min=2001,max=maxYear,animate = TRUE,
              round=TRUE,sep="",step=1),  #can use value=c(2017,2017)
  
  # mySex ======================
  radioButtons("mySex", "Sex:", choices=c("Total","Female","Male")),
  
  # myLev ======================
  actionButton( "levelHelp", label="?",style=myButtonSty),
  radioButtons("myLev", "Levels to show:", choices=c("Top Level" = "lev1","Public Health" = "lev2","Detail" = "lev3")),
  
  # myStateCut ======================
  actionButton("stateCutHelp", label="?", style=myButtonSty),
  # add br(), here to fix spacing, but does not yet....
  checkboxInput("myStateCut", "State-based cutpoints", value=TRUE),
  
  # myN ======================
  numericInput( "myN",  "How Many:", value=10,min=1,max= 50),
  
  # myMeasure--uses deathMeasures_Dropdown because the function uses short names in it (?)
  actionButton( "measureHelp", label="?",style=myButtonSty),
  radioButtons(  "myMeasure",  "Measure:", choices=deathMeasures_Dropdown, selected="YLLper"),
  
  # myMeasureShort ======================
  #actionButton( "measureHelp", label="?",style=myButtonSty) ,
  selectInput( "myMeasureShort",  "Measure Sort Order:", choices=dMNames_short, selected="YLL Rate per 100,000 population"),
  
  # myYearGrouping ======================
  radioButtons("myYearGrouping", "Years to Group:", choices=c("One","Three","Five")),
  
  # myCutSystem ======================
  actionButton("cutmethodHelp", label="?",style=myButtonSty),
  radioButtons( "myCutSystem","Cut-point method:", choices=c("quantile","fisher")),  # pretty
  
  # myLabName ======================
  checkboxInput("myLabName",  "Place Names", value=FALSE),
  
  # myCI ======================
  checkboxInput("myCI",       "95% CIs", value=FALSE),
  
  # myRefLine ======================
  checkboxInput("myRefLine",  "Reference Line", value=FALSE),
  
  # myLogTrans ======================
  checkboxInput("myLogTrans",  "Log Transform of Y Axis", value=FALSE),
  
  # myMultiRace ======================
  checkboxInput("myMultiRace",  "Include Multirace Line", value=FALSE),
  # helpText
  div(id = "myMultiRaceHelpText", helpText(h6(multiRaceWarning,style="color:red; float:left; margin: 20px;"))),

  # myX ======================
  selectInput("myX", "Social Determinant of Health Variable:", choices=sdohVec),
  
  # myOSHPDtype ======================
  selectInput( "myOSHPDtype", "Measure Sort Order:", choices = hMNames_short),
  
  # myOSHPDtype-mdcdrg ======================
  selectInput( "myOSHPDtype_mdcdrg", "Measure Sort Order:", choices = hMDCDrop_down),
  
  # myVar(ICD/MDC/DRG) ======================
  selectInput("myVar", "Variable:", choice = MDC_DRG_ICD_Dropdown),
  
  # myPrimetype ======================
  selectInput("myprimetype", "Variable", choice = c("any", "primary")),
  
  # IHME inputs ======================
  sliderInput( "level", label = "Level:", min = 0, max = 4, value = 1),
  
  sliderInput( "year", label = "Year:", min = min(VALID_YEARS), max = max(VALID_YEARS), value = max(VALID_YEARS), sep = "", step = 1), # animate = animationOptiointerval = 3000)
  
  sliderTextInput( "yearRange", label = "Years:", choices = as.character(VALID_YEARS), selected = range(VALID_YEARS), grid = TRUE),
  
  radioButtons("display",label = "Display:",choices = c("Cause" = "cause", "Risk" = "risk"), inline=TRUE),
  
  radioButtons("sex", "Sex:", choices=c("Both" = 3,"Female" = 2,"Male" = 1), inline=TRUE),

  radioButtons("metric",label = "Metric:",choices = c("Number" = 1, "Percent" = 2, "Rate" = 3), inline=TRUE),
  
  selectInput( "measure", label = "Measure:", choices = c("Deaths" = 1,
                                                          "Disability Adjusted Life Years (DALYs)" = 2,
                                                          "Years Lived with Disability (YLDs)" = 3,
                                                          "Years of Life Lost (YLLs)" = 4), selected = 1)
)

# Home ==================