import strutils
import times
import ch02_utils as utils

## Input
var ageCurrent = utils.prompt("What is your current age? ")
var ageRetire = utils.prompt("At what age would you like to retire? ")

## Processing
var yearsLeft = parseInt(ageRetire) - parseInt(ageCurrent)
var yearCurrent = format(getLocalTime(getTime()), "yyyy")
var yearRetire = format(getLocalTime(getTime()) + yearsLeft.years, "yyyy")

## Output
echo "You have $1 years left until you can retire." % [$yearsLeft]
echo "It's $1, so you can retire in $2." % [yearCurrent, yearRetire]
