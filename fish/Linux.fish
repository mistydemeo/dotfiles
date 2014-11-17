# Enable chruby and switch to default ruby
source /usr/local/share/chruby/chruby.fish
chruby 2.0.0 >/dev/null
set -x TERM xterm-256color

set -x DJANGO_SETTINGS_MODULE settings.local
set -x PYTHONPATH /usr/share/archivematica/dashboard $PYTHONPATH
set -x PYTHONPATH /usr/lib/archivematica/archivematicaCommon $PYTHONPATH
