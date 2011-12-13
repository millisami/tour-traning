source 'http://rubygems.org'

gem 'rails', '3.1.3'

gem 'sqlite3'
gem 'devise'

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem "nifty-generators"
end

group :test, :development do
  gem 'rspec-rails'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'pry'
  gem 'pry-doc'
end


group :test do
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'valid_attribute'

  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
end
