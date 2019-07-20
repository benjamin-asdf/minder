import osproc, strformat

const PromptMsg = "Rate your current flow: "

var options: string

for i in 0..9:
  options = options & $i & '\n'

let output = execProcess(&"echo \"{options}\" | dmenu -p \"{PromptMsg}\"")

echo "Current flow was rated with: ", output
