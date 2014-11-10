require 'active_record'
ActiveRecord::Base.establish_connection({
	database: 'travelblog_db',
	adapter: 'postgresql'
})

require_relative '../models/image.rb'

Image.destroy_all

image_data = [
	{
	img_url: "http://i.imgur.com/RtC1RqU.jpg",
	caption: "Newfoundland",
	country_id: 38,
	micropost_id: 3
	},

	{
	img_url: "http://i.imgur.com/67eiR8L.jpg",
	caption: "Nova Scotia",
	country_id: 38,
	micropost_id: 4
	},

 	{
	img_url: "http://i.imgur.com/ZIY8cEf.jpg",
	caption: "Pedres Negras",
	country_id:6,
	micropost_id: 2
	},

 	{
	img_url: "http://i.imgur.com/QxK2sxs.jpg",
	caption: "Kalundula Falls",
	country_id: 6,
	micropost_id: 1
	},

 	{
	img_url: "http://i.imgur.com/z4NnL7H.jpg",
	caption: "Missulo, Isle de Luanda",
	country_id: 6,
	micropost_id: 2
	},
	{
	img_url: "http://i.imgur.com/TrMxLRE.jpg",
	caption: "Mirador de Lua",
	country_id: 6,
	micropost_id: 3
	}
]	

image_data.each do |image|
	Image.create(image)
end