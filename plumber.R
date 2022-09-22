#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)
library(epanetReader)
library(tidyr)

n1 <- read.inp("~/Projects/LeakDB/CCWI-WDSA2018/Benchmarks/Hanoi_CMH/Scenario-1/Hanoi_CMH_Scenario-1.inp")

#* @apiTitle Water Pipes Meta Data API
#* @apiDescription Components of the pipes include material roughness and diameter 

#* Echo back the input
#* @param msg The message to echo
#* @get /pipes
function() {
    n1$Pipes
}

