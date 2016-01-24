import strutils, ch02_utils

var noun = prompt("Enter a noun: ")
var verb = prompt("Enter a verb: ")
var adjective = prompt("Enter an adjective: ")
var adverb = prompt("Enter an adverb: ")

echo "Do you $1 your $2 $3 $4? That's hilarious!" % [verb, adjective, noun, adverb]
