import strutils, unicode

proc prompt(msg: string = ">>> "): string =
  write(stdout, msg)
  return readLine(stdin)

var inputString = prompt("What is the input string? ")
var answer = "\"$1\" has $2 characters." % [inputString, $runeLen(inputString)]

echo answer
