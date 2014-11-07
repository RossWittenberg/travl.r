require 'active_record'
ActiveRecord::Base.establish_connection({
	database: 'travelblog_db',
	adapter: 'postgresql'
})

require_relative '../models/tag.rb'


Tag.destroy_all

tag_data = [
	{
	name: "sunny",
	},

	{
	name: "forest",
	},

 	{
	name: "photography",
	},

 	{
	name: "ocean",
	},

 	{
	name: "sunset",
	},
	{
	name: "backpacking",
	},
	{
	name: "euro trip",
	},
	{
	name: "waterfall",
	},
	{
	name: "landscape",
	},
	{
	name: "party",
	}

]	

tag_data.each do |tag|
	Tag.create(tag)
end