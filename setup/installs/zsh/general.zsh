plugins=(zsh-completions zsh-z)
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

alias list='ls --group-directories-first'
alias apollo='sudo kmutil load -p /Library/Extensions/UAD2System.kext'

# 1P Aliases + AWS-Vault
alias oplogin='eval $(op signin sendbird)'
alias opget='op get totp jj4os4tqhplr4oxyxxnjmkehvq'

# iOS Exports and Aliases
alias iossim="open -a Simulator.app"

# RabbitMQ
export PATH=$PATH:/usr/local/sbin