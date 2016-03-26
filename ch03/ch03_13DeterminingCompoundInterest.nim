##[
Write a program to compute the value of an investment compounded over
time. The program should ask for the starting amount, the number of 
years to invest, the interest rate, and the number of periods per
year to compound.

The formula you’ll use for this is

A = P * (1 + r/n)^nt

where:

    P is the principal amount.
    r is the annual rate of interest.
    t is the number of years the amount is invested.
    n is the number of times the interest is compounded per year.
    A is the amount at the end of the investment.

Example Output
​   
What is the principal amount? 1500
What is the rate? 4.3
What is the number of years? 6 
What is the number of times the interest is compounded per year? 4
​   
$1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84.

Constraints

    Prompt for the rate as a percentage (like 15, not .15). Divide 
    the input by 100 in your program.

    Ensure that fractions of a cent are rounded up to the next penny.

    Ensure that the output is formatted as money.
]##

import math
import strfmt
import ch03_utils as utils

## Input
var principal = 0.0
while principal <= 0.0:
    principal = promptFloat("What is the principal amount? ")
var rate = 0.0
while rate < 1.0:
    rate = promptFloat("What is the rate? ")
var years = promptInt("What is the number of years? ")
var times = promptInt("What is the number of times the interest is compounded per year? ")

## Processing
var r = rate / 100.0
var n = times.toFloat()
var t = years.toFloat()
var nt = n * t
var res = principal * pow((1.0 + (r/n)), nt)

## Output
printfmt("\n€{:.2f} invested at {:.2f}% for {:d} years compounded {:d} times per year is €{:.2f}\n\n", principal, rate, years, times, res)