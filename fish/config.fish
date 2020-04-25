set -g -x PATH /usr/local/bin /usr/lib/android-sdk/tools /usr/lib/android-sdk/platform-tools /opt/flutter/bin /usr/lib/dart/bin $PATH
set -g -x fish_greeting ''
set -g -x ANDROID_HOME /usr/lib/android-sdk


abbr c 'clear'

abbr rm 'rm -i'
abbr rmf 'rm -rf'

abbr go 'git checkout'
abbr g 'git'
abbr ga 'git add'
abbr gap 'git add -p'
abbr gc 'git commit'
abbr gcm 'git commit -m'
abbr gl 'git log'
abbr glg 'git lg'
abbr grlg 'git lgr'
abbr gm 'git merge'
abbr gp 'git push'
abbr gpl 'git pull'
abbr gs 'git status'

abbr von 'sudo /etc/init.d/kerio-kvc start'
abbr vof 'sudo /etc/init.d/kerio-kvc stop'
abbr vrs 'sudo /etc/init.d/kerio-kvc restart'
