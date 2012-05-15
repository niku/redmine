export GEM_HOME=$HOME/.gem/ruby/1.9.1/
export GEM_PATH=$GEM_HOME
export PATH=$PATH:/usr/local/rvm/rubies/ruby-1.9.2-p180/bin:$HOME/.gem/ruby/1.9.1/bin
export RAILS_ENV=production

gem install bundler --no-ri --no-rdoc
# FIXME error occured unless install openid
bundle install --without development test ldap rmagick postgresql sqlite # openid
