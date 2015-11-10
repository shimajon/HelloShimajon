PROMPT="[%n] > "
autoload -U compinit
compinit

bindkey -e

export HISTFILE=${HOME}/.zsh_history        # 履歴ファイルの保存先
export HISTSIZE=1000                        # メモリに保存される履歴の件数
export SAVEHIST=100000                      # 履歴ファイルに保存される履歴の件数
setopt hist_ignore_dups                     # 重複を記録しない
setopt EXTENDED_HISTORY                     # 開始と終了を記録

bindkey -v

export LANG-ja_JP.UTF-8

