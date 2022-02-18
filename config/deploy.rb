# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.16.0'

set :application, 'woodman'
set :repo_url, 'git@github.com:dastanabeuov/woodman.git'

# Default deploy_to directory is /var/www/my_app_name
#set :use_sudo, true
set :deploy_to, '/home/deployer/woodman'
set :deploy_user, 'deployer'
set :rvm_ruby_version, 'ruby-2.5.8'
# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/master.key'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'storage'

after 'deploy:publishing', 'passenger:restart'
