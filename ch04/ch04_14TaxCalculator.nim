##[
Write a simple program to compute the tax on an order amount. The 
program should prompt for the order amount and the state. If the 
state is “WI,” then the order must be charged 5.5% tax. The program 
should display the subtotal, tax, and total for Wisconsin residents 
but display just the total for non-residents.

Example Output
​   
What is the order amount? 10
What is the state? WI

The subtotal is $10.00.
The tax is $0.55.
The total is $10.55.

Or
​   
What is the order amount? 10   
What is the state? MN
​   
The total is $10.00

Constraints

    Implement this program using only a simple if statement—don’t use 
    an else clause.

    Ensure that all money is rounded up to the nearest cent.

    Use a single output statement at the end of the program to 
    display the program results.
]##

import strfmt
import strutils
import ch04_utils as utils

## Constants
const
  TAX = 0.055

## Input
var orderAmount = promptFloat("What is the order amount? ")
var state = promptString("What is the state? ").toUpper()

## Processing
var total = orderAmount
var response = "\nThe total is €" & $total

if state == "WI":
  var subTotal = orderAmount
  var tax = subTotal * TAX
  total = subTotal + tax
  response = "\nThe total is €" & total.format(".2f")
  response = "\nThe tax is €" & tax.format(".2f") & response
  response = "\nThe subtotal is €" & subTotal.format(".2f") & response

## Output
echo response
