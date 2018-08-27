set :branch, 'master'
set :rails_env, 'production'

set :puma_threads, [4, 12]
set :puma_workers, 2

server '139.59.148.171', user: 'deployer', roles: %w{app db web}
