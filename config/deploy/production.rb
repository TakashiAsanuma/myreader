set :stage,          :production
set :rails_env,      fetch(:stage)

set :ssh_options, :port => 10122

server "myreader.work", user: "app", roles: %w{app db web}
