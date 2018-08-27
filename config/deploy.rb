lock '3.11.0'

set :application, 'minskrb'
set :repo_url, 'git@github.com:minskrb/minskrb.git'

set :deploy_to, '/var/www/minskrb'

set :linked_files, %w{config/database.yml config/master.key}

set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets public/system public/assets vendor/bundle}

set :ssh_options, { :forward_agent => true }

set :pty,  false

set :rvm_ruby_version, '2.5.1@minskrb'

set :puma_preload_app, true
set :puma_init_active_record, true
