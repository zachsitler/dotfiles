# Load antigen
source $HOME/antigen.zsh

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

# Go path
export GOPATH=$HOME

export PATH="$HOME/.yarn/bin:$PATH"

# export github_token for localdeploy
export GITHUB_TOKEN=$(cat ~/.ssh/github_token)

# export lean
export PATH="$PATH":~/bin

# export fast ai
source ~/src/fast-ai/courses/setup/aws-alias.sh

# export anaconda
export PATH="$HOME/anaconda/bin:$PATH"
