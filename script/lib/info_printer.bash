#!/usr/bin/env bash
export RESET="\033[0m"
export BOLD="\033[1m"
export UNDERLINE="\033[4m"

export FG_DEFUALT="\033[39m"
export FG_BLACK="\033[30m"
export FG_RED="\033[31m"
export FG_GREEN="\033[32m"
export FG_YELLOW="\033[33m"
export FG_BLUE="\033[34m"
export FG_MAGENTA="\033[35m"
export FG_CYAN="\033[36m"
export FG_LGRAY="\033[37m"
export FG_DGRAY="\033[90m"
export FG_LRED="\033[91m"
export FG_LGREEN="\033[92m"
export FG_LYELLOW="\033[93m"
export FG_LBLUE="\033[94m"
export FG_LMAGENTA="\033[95m"
export FG_LCYAN="\033[96m"
export FG_WHITE="\033[97m"

export BG_DEFUALT="\033[49m"
export BG_BLACK="\033[40m"
export BG_RED="\033[41m"
export BG_GREEN="\033[42m"
export BG_YELLOW="\033[43m"
export BG_BLUE="\033[44m"
export BG_MAGENTA="\033[45m"
export BG_CYAN="\033[46m"
export BG_LGRAY="\033[47m"
export BG_DGRAY="\033[100m"
export BG_LRED="\033[101m"
export BG_LGREEN="\033[102m"
export BG_LYELLOW="\033[103m"
export BG_LBLUE="\033[104m"
export BG_LMAGENTA="\033[105m"
export BG_LCYAN="\033[106m"
export BG_WHITE="\033[107m"

text_info () {
  printf "\r  ${FG_CYAN}$1: [${RESET} ${FG_BLUE}..${RESET} ${FG_CYAN}]${RESET} $2\n"
}

text_user () {
  printf "\r  ${FG_CYAN}$1: [${RESET} ${FG_YELLOW}??${RESET} ${FG_CYAN}]${RESET} $2\n"
}

text_success () {
  printf "\r\033[2K  ${FG_CYAN}$1: [${RESET} ${FG_GREEN}OK${RESET} ${FG_CYAN}]${RESET} $2\n"
}

text_fail () {
  printf "\r\033[2K  ${FG_CYAN}$1: [${RESET}${BOLD}${FG_WHITE}${BG_RED}FAIL${RESET}${FG_CYAN}]${RESET} ${FG_RED}$2${RESET}\n"
}
