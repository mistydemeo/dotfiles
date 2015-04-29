set uuid_prefix (brew --prefix ossp-uuid)
alias uuid="$uuid_prefix/bin/uuid"

alias tatiana="ssh -A -L 8000:localhost:8000 -R 52698:localhost:52698 mdemeo@tatiana.local"
