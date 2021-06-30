source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 6.0.0', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'bcrypt'  
gem 'rack-flash3'
gem 'dotenv'
gem 'foreman'

group :development do
  gem 'sqlite3'
  gem 'shotgun'
  gem 'pry'
  gem "tux"
end

group :production do
  gem 'pg', '~> 0.20' 
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner'
end