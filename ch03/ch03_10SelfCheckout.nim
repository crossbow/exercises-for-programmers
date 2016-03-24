##[
Create a simple self-checkout system. Prompt for the prices and quantities of
three items. Calculate the subtotal of the items. Then calculate the tax 
using a tax rate of 5.5%. Print out the line items with the quantity and 
total, and then print out the subtotal, tax amount, and total.

Example Output
​   
Enter the price of item 1: 25  
Enter the quantity of item 1: 2
​   
Enter the price of item 2: 10   
Enter the quantity of item 2: 1
​   
Enter the price of item 3: 4
Enter the quantity of item 3: 1
​   
Subtotal: $64.00
​   
Tax: $3.52
​   
Total: $67.52

Constraints

    Keep the input, processing, and output parts of your program separate.
    Collect the input, then do the math operations and string building, and 
    then print out the output.

    Be sure you explicitly convert input to numerical data before doing any
    calculations.
]##

import strutils
import ch03_utils as utils

## Constant
const TAX_RATE = 0.055
const MAX_ITEM = 3

## Type
type
  Item* = object
    price*: float
    quantity*: int

var items: array[1..MAX_ITEM, Item]

## Input
for i in 1..MAX_ITEM:
  var price = promptFloat("Enter the price of item " & $i & ": ")
  var quantity = promptInt("Enter the quantity of item " & $i & ": ")
  echo " "
  items[i] = Item(price: price, quantity: quantity)

## Processing
var subTotal = 0.0
for i in 1..MAX_ITEM:
  subTotal = subTotal + (items[i].price * items[i].quantity.toFloat())

var tax = subTotal * TAX_RATE
var total = subTotal + tax

## Output
echo "Subtotal: € $1" % [$subTotal]
echo "Tax: € $1" % [$tax]
echo "Total: € $1" % [$total]
