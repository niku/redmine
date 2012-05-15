export GEM_HOME=$HOME/.gem/ruby/1.9.1/
export GEM_PATH=$GEM_HOME
export PATH=$PATH:/usr/local/rvm/rubies/ruby-1.9.2-p180/bin:$HOME/.gem/ruby/1.9.1/bin
export RAILS_ENV=production

bundle exec rake generate_secret_token
bundle exec rake db:migrate:reset
echo "en" | bundle exec rake redmine:load_default_data
