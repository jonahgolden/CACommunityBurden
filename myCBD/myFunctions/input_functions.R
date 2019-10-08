
# ==============================================================

INPUTS <- c("display","yearRange","level","year","sex","metric","measure","causeHelp","myCAUSE","myLHJ","myGeo","myYear","mySex","levelHelp","myLev","stateCutHelp","myStateCut","myN","measureHelp","myMeasure","myMeasureShort","myYearGrouping","cutmethodHelp","myCutSystem","myLabName","myCI","myRefLine","myLogTrans","myMultiRace","myX","myOSHPDtype","myOSHPDtype_mdcdrg","myVar","myprimetype","myGeoHelpText","myMultiRaceHelpText")

hideAllInputs <- function() {
  for (input in INPUTS) {
    hide(input)
  }
}

TAB_INPUTS <- list("homeTab"=c("textHomeTab"),
                   "aboutTab"=c("textHomeTab"),
                   "techDocTab"=c("textHomeTab"),
                   "otherLinksTab"=c("textHomeTab"),
                   "lifeExpectancyTab"=c("myLHJ"),
                   "interactiveMapTab"=c("causeHelp", "myCAUSE", "myLHJ", "myGeo", "mySex", "stateCutHelp", "myStateCut", "measureHelp", "myMeasure", "cutmethodHelp", "myCutSystem"),
                   "staticMapTab"=c("causeHelp", "myCAUSE", "myLHJ", "myGeo", "measureHelp", "myMeasure", "cutmethodHelp", "myCutSystem", "myLabName", "mySex", "stateCutHelp", "myStateCut"),
                   "rankByCauseTab"=c("myLHJ", "mySex", "levelHelp", "myLev", "myN", "myMeasureShort"),
                   "rankByCauseAndSexTab"=c("levelHelp", "myLev", "myN", "measureHelp", "myMeasure"),
                   "rankByGeographyTab"=c("causeHelp", "myCAUSE", "myLHJ", "mySex", "measureHelp", "myMeasure", "myRefLine"),
                   "trendTab"=c("causeHelp", "myCAUSE", "myLHJ", "measureHelp", "myMeasure", "myYearGrouping"),
                   "ageTrendTab"=c("causeHelp", "myCAUSE", "myLHJ", "measureHelp", "myMeasure", "myLogTrans"),
                   "raceTrendTab"=c("causeHelp", "myCAUSE", "myLHJ", "myLogTrans", "myMultiRace"),
                   "raceDisparityTab"=c("causeHelp", "myCAUSE", "myLHJ"),
                   "educationTrendTab"=c("causeHelp", "myCAUSE", "myLHJ", "mySex", "measureHelp", "myMeasure", "myLogTrans"),
                   "dataTableTab"=c("myLHJ"),
                   "socialDeterminantsTab"=c("causeHelp", "myCAUSE", "myGeo", "mySex", "measureHelp", "myMeasure", "myX"),
                   "hospitalDischargeTab"=c("myLHJ", "myGeo", "mySex", "myN", "myOSHPDtype"),
                   "MDC/DRGTab"=c("myLHJ", "mySex", "myN", "myOSHPDtype_mdcdrg", "myVar"),
                   "hospitalDischargePandDTab"=c("myLHJ", "mySex", "myVar", "myprimetype"),
                   "hospitalMapTab"=c("causeHelp", "myCAUSE", "myLHJ", "mySex"),
                   "arrowsTab"=c("display", "level", "measure", "yearRange", "sex", "metric"),
                   "riskByCauseTab"=c("level", "year", "sex", "metric", "measure")
)

updateMyYearInput <- function(tabID, myGeo, myLHJ) {
  if ( (tabID %in% c("rankByCauseTab","dataTableTab")) ||
       ((tabID %in% c("interactiveMapTab","staticMapTab")) && (myGeo=="County")) ||
       ((tabID %in% c("rankByGeographyTab")) && (myLHJ=="CALIFORNIA"))
  ) { return("myYear") }
  #{ show("myYear") } else { hide("myYear") }
}

updateMyCiInput <- function(tabID, myMeasure) {
  if ( (tabID %in% c("rankByGeographyTab")) &&
       (myMeasure %in% c("cDeathRate", "aRate"))
  ) { return("myCI") }
  # { show("myCI") } else { hide("myCI") }
}

updateMyGeoHelpText <- function(tabID, myGeo) {
  if ( (tabID %in% c("interactiveMapTab","staticMapTab","hospitalMapTab")) &&
       (myGeo=="Census Tract")
  ) { return("myGeoHelpText") }
  # { show("myGeoHelpText") } else { hide("myGeoHelpText") }
}

updateMyMultiRaceHelpText <- function(tabID, myMultiRace) {
  if ( (tabID=="raceTrendTab") && (myMultiRace)
  ) { return("myMultiRaceHelpText") }
  # { show("myMultiRaceHelpText") } else { hide("myMultiRaceHelpText") }
}

updateInputsOnTabId <- function(tabID, myGeo="", myLHJ="", myMeasure="", myMultiRace="") {
  tab_inputs = get(tabID, TAB_INPUTS)
  tab_inputs = c(tab_inputs,
                 updateMyYearInput(tabID, myGeo, myLHJ),
                 updateMyCiInput(tabID, myMeasure),
                 updateMyGeoHelpText(tabID, myGeo),
                 updateMyMultiRaceHelpText(tabID, myMultiRace))
  
  for (input in tab_inputs) { show(input) }
  for (input in setdiff(INPUTS, tab_inputs)) { hide(input) }
}

# showTabInputs <- function(tabID, myGeo, myLHJ, myMeasure) {
#   if (tabID == "homeTab") {
#   } else if (tabID == "aboutTab") {
#   } else if (tabID == "lifeExpectancyTab") {
#     show("myLHJ")
#   } else if (tabID == "interactiveMapTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     show("myGeo")
#     if (myGeo == 'County') {show("myYear")}
#     show("mySex")
#     show("stateCutHelp")
#     show("myStateCut")
#     show("measureHelp")
#     show("myMeasure")
#     show("cutmethodHelp")
#     show("myCutSystem")
#   } else if (tabID == "staticMapTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     show("myGeo")
#     show("measureHelp")
#     show("myMeasure")
#     show("cutmethodHelp")
#     show("myCutSystem")
#     show("myLabName")
#     if (myGeo == 'County') {show("myYear")}
#     show("mySex")
#     show("stateCutHelp")
#     show("myStateCut")
#   } else if (tabID == "rankByCauseTab") {
#     show("myLHJ")
#     show("myYear")
#     show("mySex")
#     show("levelHelp")
#     show("myLev")
#     show("myN")
#     show("myMeasureShort")
#   } else if (tabID == "rankByCauseAndSexTab") {
#     show("levelHelp")
#     show("myLev")
#     show("myN")
#     show("measureHelp")
#     show("myMeasure")
#   } else if (tabID == "rankByGeographyTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     if (myLHJ == 'CALIFORNIA') {show("myYear")}
#     show("mySex")
#     show("measureHelp")
#     show("myMeasure")
#     if ((myMeasure == 'cDeathRate') | (myMeasure == 'aRate')) {show("myCI")}
#     show("myRefLine")
#   } else if (tabID == "trendTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     show("measureHelp")
#     show("myMeasure")
#     show("myYearGrouping")
#   } else if (tabID == "ageTrendTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     show("measureHelp")
#     show("myMeasure")
#     show("myLogTrans")
#   } else if (tabID == "raceTrendTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     show("myLogTrans")
#     show("myMultiRace")
#   } else if (tabID == "raceDisparityTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#   } else if (tabID == "educationTrendTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     show("mySex")
#     show("measureHelp")
#     show("myMeasure")
#     show("myLogTrans")
#   } else if (tabID == "dataTableTab") {
#     show("myLHJ")
#     show("myYear")
#   } else if (tabID == "socialDeterminantsTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myGeo")
#     show("mySex")
#     show("measureHelp")
#     show("myMeasure")
#     show("myX")
#   } else if (tabID == "hospitalDischargeTab") {
#     show("myLHJ")
#     show("myGeo")
#     show("mySex")
#     show("myN")
#     show("myOSHPDtype")
#   } else if (tabID == "MDC/DRGTab") {
#     show("myLHJ")
#     show("mySex")
#     show("myN")
#     show("myOSHPDtype_mdcdrg")
#     show("myVar")
#   } else if (tabID == "hospitalDischargePandDTab") {
#     show("myLHJ")
#     show("mySex")
#     show("myVar")
#     show("myprimetype")
#   } else if (tabID == "hospitalMapTab") {
#     show("causeHelp")
#     show("myCAUSE")
#     show("myLHJ")
#     show("mySex")
#   } else if (tabID == "arrowsTab") {
#     show("display")
#     show("level")
#     show("measure")
#     show("yearRange")
#     show("sex")
#     show("metric")
#   } else if (tabID == "riskByCauseTab") {
#     show("level")
#     show("year")
#     show("sex")
#     show("metric")
#     show("measure")
#   } else if (tabID == "techDocTab") {
#   } else if (tabID == "otherLinksTab") {
#   }
# }
