export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(/opt/homebrew/bin/brew shellenv)"
. $(brew --prefix asdf)/asdf.sh

eval "$(direnv hook bash)"

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

. /opt/homebrew/etc/bash_completion.d/rg.bash
. /opt/homebrew/etc/bash_completion.d/asdf.bash
