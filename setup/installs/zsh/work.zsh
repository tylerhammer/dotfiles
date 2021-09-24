# Commands & Aliases for Work

sbconnect() {
  ssh -i .ssh/aws_sb tyler-hammer@deploy-$1.sendbird.com
}

sbdev() {
 cd ~/Documents/Development/Sendbird/$1
}