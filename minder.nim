import os
import strformat

var options: string
for item in ["blubb", "blobb", "lul"]:
  options = options & item & '\n'

let cmd = &"echo \"{options}\" | dmenu"
discard execShellCmd(cmd)
