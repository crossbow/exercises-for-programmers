import strutils

proc prompt*(msg: string = ">>> "): string =
  write(stdout, msg)
  return readLine(stdin)

proc promptString*(msg: string = ">>> "): string =
  write(stdout, msg)
  result = readLine(stdin)
  while result.isSpace() or result == "" :
    echo ""
    write(stdout, msg)
    result = readLine(stdin)

proc promptInt*(msg: string = ">>> "): int =
  ## Not negative
  ## Not float
  write(stdout, msg)
  var res = readLine(stdin)
  while not res.isDigit() :
    echo ""
    write(stdout, msg)
    res = readLine(stdin)
  result = parseInt(res)

when isMainModule:
  echo "Testing testPromptString"
  var testPromptString = promptString()
  echo testPromptString

  echo "Testing testPromptInt"
  var testPromptInt = promptInt()
  echo testPromptInt
