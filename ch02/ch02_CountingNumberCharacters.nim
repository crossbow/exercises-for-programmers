## The answer is correct with ASCII string only
## UNICODE version need to be designed

import strutils

proc prompt(msg: string = ">>> "): string =
  write(stdout, msg)
  return readLine(stdin)

var inputString = prompt("What is the input string? ")
var answer = "$1 has $2 characters." % [inputString, $len(inputString)]

echo answer
