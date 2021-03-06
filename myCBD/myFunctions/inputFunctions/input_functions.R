# ===================================================================================
# Functions for Showing & Hiding sidebar Inputs.  (actual inputs are in input_widgets.R)
# Jonah Golden, October 8 2019
# ===================================================================================


# Constants =========================================================================

# List of all show/hide inputs (except 'textHomeTab', and 'textNotHomeTab', which are handled in server)
INPUTS <- c("tabHelp", "display","yearRange","level","year","sex","metric","measure","myCAUSE","myLHJ","myGeo","myYear","mySex","myLev","myStateCut","myN","myMeasure","myMeasureShort","myYearGrouping","myCutSystem","myLabName","myCI","myRefLine","myLogTrans","myMultiRace","myX","myOSHPDtype","myOSHPDtype_mdcdrg","myVar","myprimetype","myGeoHelpText","myMultiRaceHelpText", "trendDownloads", "rankCauseDownloads", "suppressionNote", "yllNote")

# Tab to inputs mapping: Associates each tab with it's input widgets
TAB_INPUTS <- list("homeTab"=c(),
                   "aboutTab"=c(),
                   "techDocTab"=c(),
                   "otherLinksTab"=c(),
                   "lifeExpectancyTab"=c("myLHJ"),
                   "interactiveMapTab"=c("tabHelp", "myCAUSE","myLHJ","myGeo","mySex","myStateCut","myMeasure","myCutSystem", "yllNote"),
                   "staticMapTab"=c("tabHelp", "myCAUSE", "myLHJ", "myGeo", "myMeasure", "myCutSystem", "myLabName", "mySex", "myStateCut", "yllNote"),
                   "rankByCauseTab"=c("rankCauseDownloads", "tabHelp", "myLHJ", "mySex", "myLev", "myN", "myMeasureShort", "suppressionNote", "yllNote"),
                   "rankByCauseAndSexTab"=c("tabHelp", "myLev", "myN", "myMeasure"),
                   "rankByGeographyTab"=c("tabHelp", "myCAUSE", "myLHJ", "mySex", "myMeasure", "myRefLine", "suppressionNote", "yllNote"),
                   "trendTab"=c("trendDownloads", "tabHelp", "myCAUSE", "myLHJ", "myMeasure", "myYearGrouping", "suppressionNote", "yllNote"),
                   "ageTrendTab"=c("myCAUSE", "myLHJ", "myLogTrans"),
                   "raceTrendTab"=c("myCAUSE", "myLHJ", "myMeasure","myLogTrans", "myMultiRace", "suppressionNote", "yllNote"),
                   "raceDisparityTab"=c("myCAUSE", "myLHJ", "suppressionNote", "yllNote"),
                   "educationTrendTab"=c("myCAUSE", "myLHJ", "mySex", "myMeasure", "myLogTrans", "suppressionNote", "yllNote"),
                   "dataTableTab"=c("tabHelp", "myLHJ", "suppressionNote", "yllNote"),
                   "socialDeterminantsTab"=c("tabHelp", "myCAUSE", "myGeo", "mySex", "myMeasure", "myX", "suppressionNote", "yllNote"),
                   "hospitalDischargeTab"=c("myLHJ", "myGeo", "mySex", "myN", "myVar","myOSHPDtype"),
                   "MDC/DRGTab"=c("myLHJ", "mySex", "myN", "myOSHPDtype_mdcdrg", "myVar"),
                   "hospitalDischargePandDTab"=c("myLHJ", "mySex", "myVar", "myprimetype"),
                   "hospitalMapTab"=c("myCAUSE", "myLHJ", "mySex"),
                   "arrowsTab"=c("display", "level", "measure", "yearRange", "sex", "metric"),
                   "riskByCauseTab"=c("level", "year", "sex", "metric", "measure")
)

# Functions =========================================================================

# Self Explanatory
hideAllInputs <- function() {
  for (input in INPUTS) { hide(input) }
}

# Main function for updating input widgets ------------------------------------------
updateInputsOnTabId <- function(tabID, myGeo="", myLHJ="", myMeasure="", myMultiRace="") {
  updateMyGeoHelpText(tabID, myGeo)
  # 1. Build list of desired inputs
  curr_tab_inputs = get(tabID, TAB_INPUTS)
  curr_tab_inputs = c(curr_tab_inputs,
                      updateMyYearInput(tabID, myGeo, myLHJ),
                      updateMyCiInput(tabID, myMeasure),
                      updateMyMultiRaceHelpText(tabID, myMultiRace))
  
  # 2. Show desired inputs, hide rest. (smoother transition in the UI if you show THEN hide):
  for (input in curr_tab_inputs) { show(input) }  
  for (input in setdiff(INPUTS, curr_tab_inputs)) { hide(input) }
}


# Helper functions for inputs with more complicated conditionals --------------------
getCurrentTabName <- function(curr_tab) {
}


#   myYear, myCI, myGeoHelpText, myMultiRaceHelpText

updateMyYearInput <- function(tabID, myGeo, myLHJ) {
  if ( (tabID %in% c("rankByCauseTab","dataTableTab")) ||
       ((tabID %in% c("interactiveMapTab","staticMapTab")) && (myGeo=="County")) ||
       ((tabID %in% c("rankByGeographyTab")) && (myLHJ=="CALIFORNIA"))
  ) { return("myYear") }
}

updateMyCiInput <- function(tabID, myMeasure) {
  if ( (tabID %in% c("rankByGeographyTab")) &&
       (myMeasure %in% c("cDeathRate", "aRate"))
  ) { return("myCI") }
}

updateMyGeoHelpText <- function(tabID, myGeo) {
  if ( (tabID %in% c("interactiveMapTab","staticMapTab","hospitalMapTab")) &&
       (myGeo=="Census Tract")
  ) { show("myGeoHelpText") }
}

updateMyMultiRaceHelpText <- function(tabID, myMultiRace) {
  if ( (tabID=="raceTrendTab") && (myMultiRace)
  ) { return("myMultiRaceHelpText") }
}







# Debugging and Alternatives ========================================================




# An alternative method to updateInputsOnTabId:
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
