alias gcam="git commit -am "
alias fnd="open -a '/System/Library/CoreServices/Finder.app'"
alias tmn=" tmux new"
alias shortcut="open -a 'Sublime Text' ~/.oh-my-zsh/custom/example.zsh"
alias calc=" open -A 'Calculator'"
alias cal=" open -A 'Calendar'"
alias atom=" open -a 'Atom'"
alias rs1=' rails server -p 4001'
alias rs2=' rails server -p 5002'
alias rs3=' rails server -p 6003'
alias rs4=' rails server -p 7004'
alias rvmdefault=' rvm use default'
alias ruby193=' rvm use ruby-1.9.3'
alias rgm='rails g migration'
alias rdbm=' rake db:drop db:create db:migrate db:seed'
alias hist='history | grep'
alias binp=' bundle install --without production'
alias gpo=' git push origin '
alias dash=" open -a 'Dash'"
alias subl=" open -a 'Sublime Text'"
alias sub=" open -a 'Sublime Text'"
alias ign=' open -a "Sublime Text" ~/TheIronYard/ignore/Class_Projects'
alias hw=' open -a "Sublime Text" ~/TheIronYard/Homework'
# alias sf='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
# alias hf='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias rs=' rails server'
alias gst=' git status'
alias chrome=" open -a 'Google Chrome'"
alias rc=' rails console'
alias rcs=' rc --sandbox'
alias bi=' bundle install'
alias la=' ls -a'
alias lsa=' ls -a'
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
 ZSH_THEME="eastwood"
# ZSH_THEME="jamesdabbs"
# ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails atom brew github rvm sublime colored-man command-not-found osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vim'
fi


export PATH="/Users/joshuarivers/.rvm/bin:/Users/joshuarivers/.rvm/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin" # Add RVM to PATH for scripting


