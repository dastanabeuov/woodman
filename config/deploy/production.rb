# frozen_string_literal: true

server '185.129.50.113', user: 'deployer', roles: %w[app web db], primary: true

set :rails_env, :production

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
set :ssh_options, {
  keys: %w[/Users/adk/.ssh/id_rsa],
  forward_agent: true,
  auth_methods: %w[publickey password],
  port: 7535
}
