import strutils

proc prompt(msg: string = ">>> "): string =
  write(stdout, msg)
  return readLine(stdin)

let greet = "Hello, $1, nice to meet you!"
var name = prompt("What is your name? ")

echo greet % [name]
