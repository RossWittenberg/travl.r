require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'better_errors'

require_relative 'controllers/authors_controller.rb'
require_relative 'controllers/countries_controller.rb'
require_relative 'controllers/home_controller.rb'
require_relative 'controllers/images_controller.rb'
require_relative 'controllers/microposts_controller.rb'
require_relative 'controllers/tags_controller.rb'

require_relative 'models/author.rb'
require_relative 'models/country.rb'
require_relative 'models/image.rb'
require_relative 'models/micropost.rb'
require_relative 'models/tag.rb'

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