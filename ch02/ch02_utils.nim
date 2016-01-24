proc prompt*(msg: string = ">>> "): string =
  write(stdout, msg)
  return readLine(stdin)

when isMainModule:
  var testPrompt = prompt()
  echo testPrompt
