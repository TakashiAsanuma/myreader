# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

set :application, "myreader"
set :repo_url, "git@github.com:TakashiAsanuma/myreader.git"

# Default branch is :master
ask :branch, 'master'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/myreader.work"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
set :default_env, { path: "/opt/rbenv/shims/:/opt/rbenv/bin/:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure


set :rbenv_type, :system
set :rbenv_ruby, '2.4.1'
set :rbenv_custom_path, '/opt/rbenv'
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/id_rsa')],
  forward_agent: true, 
  auth_methods: %w(publickey) 
}

SSHKit.config.command_map[:rake] = 'bundle exec rake'
