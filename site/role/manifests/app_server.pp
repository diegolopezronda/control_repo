class role::app_server {
  include profile::base
  include profile::app
  include profile::ssh_server
}
