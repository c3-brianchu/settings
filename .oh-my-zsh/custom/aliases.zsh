setopt cdablevars

alias zshconfig="vim ~/.zshrc"
alias alias="vim ~/.oh-my-zsh/custom/aliases.zsh"

hash -d base=~/Desktop/c3/c3base
hash -d provbase=~/Desktop/c3/dev/base
hash -d server=~/Desktop/c3/c3server

prov() {
  local PROV_CMD="c3 prov tag -c $1 -t ${2:-$1}:${3:-prod} -e http://localhost:8080/ -u BA:BA -W -E -r";
  echo ${PROV_CMD};
  eval ${PROV_CMD}
}

configk8() {
  cd ~/Desktop/c3/c3server;
  PATH=.:$PATH;
  ./c3-k8s configure
}

