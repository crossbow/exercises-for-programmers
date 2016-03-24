import strutils
import ch03_utils as utils

## Constant to convert from square feet to square meters
const F2M = 0.09290304

## Input
var length = promptFloat("What is the length of the room in feet? ")
var width = promptFloat("What is the width of the room in feet? ")

## Processing
var feetArea = length * width
var meterArea = feetArea * F2M

## Output
echo "You entered dimension of $1 feet by $2 feet." % [$length, $width]
echo "The area is:"
echo "$1 square feet" % [$feetArea]
echo "$1 square meters" % [$meterArea]