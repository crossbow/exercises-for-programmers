##[
Write a program to evenly divide pizzas. Prompt for the number of people,
the number of pizzas, and the number of slices per pizza. Ensure that the
number of pieces comes out even. Display the number of pieces of pizza 
each person should get. If there are leftovers, show the number of 
leftover pieces.

Example Output

How many people? 8
How many pizzas do you have? 2
​How many slices per pizza? 8

8 people with 2 pizzas
Each person gets 2 pieces of pizza.
There are 0 leftover pieces.
]##

import strutils
import ch03_utils as utils

## Input
var people = utils.promptInt("How many people? ")
var pizzas = utils.promptInt("How many pizzas do you have? ")
var slices = utils.promptInt("How many slices per pizza? ")

## Processing
var totSlices = pizzas * slices
var division = totSlices div people
var modulo = totSlices mod people

## Output
echo " "
echo "$1 people with $2 pizzas" % [$people, $pizzas]
echo "Each person gets $1 pieces of pizza." % [$division]
echo "There are $1 leftover pieces" % [$modulo]