#environment 'production'
port 8080
daemonize true
state_path 'tmp/pids/puma.state'
pidfile 'tmp/pids/puma.pid'
threads 0,16
workers 2
