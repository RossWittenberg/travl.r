require 'active_record'
ActiveRecord::Base.establish_connection({
	database: 'travelblog_db',
	adapter: 'postgresql'
})

require_relative '../models/image.rb'

Image.destroy_all

author_data = [
	{
	img_url: "http://i.imgur.com/RtC1RqU.jpg",
	caption: "Newfoundland"
	},

	{
	img_url: "http://i.imgur.com/67eiR8L.jpg",
	caption: "Nova Scotia"
	},

 	{
	img_url: "http://i.imgur.com/ZIY8cEf.jpg",
	caption: "Pedres Negras"
	},

 	{
	img_url: "http://i.imgur.com/QxK2sxs.jpg",
	caption: "Kalundula Falls"
	},

 	{
	img_url: "http://i.imgur.com/z4NnL7H.jpg",
	caption: "Missulo, Isle de Luanda"
	}
	{
	img_url: "http://i.imgur.com/TrMxLRE.jpg",
	caption: "Mirador de Lua"
	}
	{
	img_url: "ross",
	caption: "caption..."
	}
	{
	img_url: "ross",
	caption: "caption..."
	}
	{
	img_url: "ross",
	caption: "caption..."
	}
	{
	img_url: "ross",
	caption: "caption..."
	}	
]	

author_data.each do |author|
	Author.create(author)
end