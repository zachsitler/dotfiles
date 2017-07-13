# Load antigen
source /usr/local/share/antigen/antigen.zsh

# Load oh-my-zsh
antigen use oh-my-zsh

# Load bundles
antigen bundle git
antigen bundle git-extras
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found
antigen bundle pip

# Load theme
antigen theme steeef

antigen apply

# Load aliases
source $HOME/.alias

# Load fasd
eval "$(fasd --init auto)"

# Export NVM
export NVM_DIR="/Users/zachsitler/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Initialize ssh-keys
# for key in $(ls $HOME/.ssh | grep rsa | grep -v .pub); do
#   if ! $(ssh-add -l | grep $key > /dev/null); then
#     ssh-add $HOME/.ssh/$key
#   fi
# done

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/zachsitler/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/zachsitler/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/zachsitler/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/zachsitler/Downloads/google-cloud-sdk/completion.zsh.inc'
fi
eval "$(rbenv init -)"

# 10ms for key sequences
KEYTIMEOUT=1

# Go path
export GOPATH=$HOME

# Yarn path
export PATH="$HOME/.yarn/bin:$PATH"

# export lein
export PATH="$PATH":~/bin

# export anaconda
export PATH="$HOME/anaconda/bin:$PATH"
