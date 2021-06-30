ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
Dotenv.load if ENV['SINATRA_ENV'] == "development"

# ActiveRecord::Base.establish_connection(ENV['SINATRA_ENV'].to_sym)

set :database_file, "./database.yml"


require 'rack-flash'
require_all 'app'
