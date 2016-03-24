##[
Calculate gallons of paint needed to paint the ceiling of a room. Prompt for
the length and width, and assume one gallon covers 350 square feet. Display 
the number of gallons needed to paint the ceiling as a whole number.

Example Output
​   
You will need to purchase 2 gallons of paint to cover 360 square feet.

Remember, you can’t buy a partial gallon of paint. You must round up to the 
next whole gallon.

Constraints
    Use a constant to hold the conversion rate.
    Ensure that you round up to the next whole number.
]##

import strutils
import ch03_utils as utils

## Constant
const RATE = 350

## Input
var length = promptFloat("What is the length of the room in feet? ")
var width = promptFloat("What is the width of the room in feet? ")

## Processing
var paint = 1
var area = length * width
var modulo = area.toInt() mod RATE
if modulo == 0:
  paint = area.toInt() div RATE
else:
  paint = paint + (area.toInt() div RATE)

## Output
echo "You will need to purchase $1 gallons of paint to cover $2 square feet" % [$paint, $area]
