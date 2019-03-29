# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

# Memória ram utilizada
memo_ram_usage(){
	echo "$(awk '{print $3}' <(sed -u '2!d' <(free -h)))B \uF85A"
}

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LINUX_MANJARO_ICON="\uf312 "
# POWERLEVEL9K_LINUX_MANJARO_ICON=" ""\uf312"
POWERLEVEL9K_CUSTOM_MEMO="memo_ram_usage"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMTP_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{108}\uF054%f "
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='▓▒░'
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='░▒▓'

# Tratamento do DIR

local color_back='222'
local color_fore='000'

POWERLEVEL9K_DIR_HOME_BACKGROUND=$color_back
POWERLEVEL9K_DIR_HOME_FOREGROUND=$color_fore
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$color_back
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=$color_fore
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$color_back
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=$color_fore
POWERLEVEL9K_DIR_ETC_BACKGROUND=$color_back
POWERLEVEL9K_DIR_ETC_FOREGROUND=$color_fore
POWERLEVEL9K_FOLDER_ICON='%F{$color_fore}\uF115%f'
POWERLEVEL9K_HOME_ICON="%F{$color_fore}\uF015%f"
POWERLEVEL9K_HOME_SUB_ICON="%F{$color_fore}\uF07C%f"
POWERLEVEL9K_ETC_ICON="%F{$color_fore}\uE5FC%f"

POWERLEVEL9K_USER_DEFAULT_BACKGROUND="005"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="fff"
POWERLEVEL9K_USER_ICON='%F{fff}\uF2BE%f'
POWERLEVEL9K_USER_ROOT_BACKGROUND="005"
POWERLEVEL9K_USER_ROOT_FOREGROUND="fff"
POWERLEVEL9K_ROOT_ICON='%F{fff}\uF21B%f'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_TIME_BACKGROUND="172"
POWERLEVEL9K_TIME_FOREGROUND="fff"
# POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_TIME_ICON='%F{fff}\uF49B%f'

POWERLEVEL9K_DATE_BACKGROUND="221"
POWERLEVEL9K_DATE_FOREGROUND="black"

POWERLEVEL9K_OS_ICON_BACKGROUND="108"
# POWERLEVEL9K_OS_ICON_BACKGROUND="005"
POWERLEVEL9K_OS_ICON_FOREGROUND="fff"

POWERLEVEL9K_HOST_LOCAL_BACKGROUND="141"
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="fff"
POWERLEVEL9K_HOST_REMOTE_BACKGROUND="013"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="fff"
POWERLEVEL9K_HOST_ICON="%F{fff}\uF109%f" # 
POWERLEVEL9K_SSH_ICON="\uF489 " # 

POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND='red'
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND='fff'

POWERLEVEL9K_CUSTOM_MEMO_BACKGROUND='200'
POWERLEVEL9K_CUSTOM_MEMO_FOREGROUND='fff'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator custom_memo time host)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	 zsh-syntax-highlighting
	 zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias to normal user
alias upd="sudo pacman -Syy"
alias upg="sudo pacman -Syyu"
alias updmirs="sudo pacman-mirrors -c Brazil"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
