##[
Write a program that converts currency. Specifically, convert euros to U.S.
dollars. Prompt for the amount of money in euros you have, and prompt for 
the current exchange rate of the euro. Print out the new amount in U.S. 
dollars. The formula for currency conversion is

amount_to = amount_from * rate_from

where

    amount_to is the amount in U.S. dollars.
    amount_from is the amount in euros.
    rate_from is the current exchange rate in euros.

Example Output
 
How many euros are you exchanging? 81
What is the exchange rate? 137.51
   
81 euros at an exchange rate of 137.51 is   
111.38 U.S. dollars.

Constraints

    Ensure that fractions of a cent are rounded up to the next penny.
    Use a single output statement.

For currency rate see:
http://www.x-rates.com/calculator/?from=EUR&to=USD&amount=1
]##

import strutils
import strfmt
import ch03_utils as utils

## Input
var amountFrom = promptFloat("How many euros are you exchanging? ")
var rateFrom = promptFloat("What is the exchange rate from euro to U.S. dollar? ")

## Processing
var amountTo = amountFrom * rateFrom

## Output
echo " "
#echo "$1 euros at an exchange rate of $2 are $3 U.S. dollars." % [$amountFrom, $rateFrom, $amountTo]
printfmt("{:.2f} euros at an exchange rate of {:.5f} are {:.2f} U.S. dollars.\n", amountFrom, rateFrom, amountTo)
