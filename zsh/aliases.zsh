alias check_iran="ping -c3 185.206.92.110"
alias agent_bw="export SSH_AUTH_SOCK=/Users/ehsan/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock"
alias agent_rbw="export SSH_AUTH_SOCK=$(getconf DARWIN_USER_TEMP_DIR)/rbw-$(id -u)/ssh-agent-socket"

function vpn_asia() {
  PASSWORD=$(rbw get "Snapp Mail")
  echo $PASSWORD | sudo openconnect --config /opt/homebrew/etc/openfortivpn/site_asia --passwd-on-stdin
}

function vpn_afra() {
  PASSWORD=$(rbw get "Snapp Mail")
  echo $PASSWORD | sudo openconnect --config /opt/homebrew/etc/openfortivpn/site_afra --passwd-on-stdin
}

function enable_rancher() {
  PATH="/Users/ehsan/.rd/bin:$PATH"
}
