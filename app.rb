require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'better_errors'

require_relative 'controllers/authors_conroller.rb'
require_relative 'controllers/countries_controller.rb'
require_relative 'controllers/home_controller.rb'
require_relative 'controllers/images_controller.rb'
require_relative 'controllers/microposts_controller.rb'
require_relative 'controllers/tags_controller.rb'

require_relative 'models/author.rb'
require_relative 'country/author.rb'
require_relative 'image/author.rb'
require_relative 'micropost/author.rb'
require_relative 'tag/author.rb'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'travelblog_db',
	host: 'localhost'
})

after { ActiveRecord::Base.connection.close }