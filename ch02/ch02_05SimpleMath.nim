import strutils, ch02_utils

## Input
var firstNumber = prompt("What is the first number? ")
var secondNumber = prompt("What is the second number? ")

## Parsing
let x = parseInt(firstNumber)
let y = parseInt(secondNumber)

## Processing
let mySum = $(x + y)
let mySub = $(x - y)
let myMul = $(x * y)
let myDiv = $(x / y)

## Output
echo """
$1 + $2 = $3
$1 - $2 = $4
$1 * $2 = $5
$1 / $2 = $6""" % 
  [firstNumber, 
   secondNumber, 
   mySum, 
   mySub, 
   myMul, 
   myDiv]
