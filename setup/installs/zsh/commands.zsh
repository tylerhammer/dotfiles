# Custom Commands

opvault() {
  aws-vault exec -t $(opget) $1
}

ngr() {
  ~/Documents/Development/ngrok http $1
}

