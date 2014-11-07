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
	micropost_id: 3
	},

	{
	img_url: "http://i.imgur.com/67eiR8L.jpg",
	caption: "Nova Scotia",
	micropost_id: 4
	},

 	{
	img_url: "http://i.imgur.com/ZIY8cEf.jpg",
	caption: "Pedres Negras",
	micropost_id: 5
	},

 	{
	img_url: "http://i.imgur.com/QxK2sxs.jpg",
	caption: "Kalundula Falls",
	micropost_id: 4
	},

 	{
	img_url: "http://i.imgur.com/z4NnL7H.jpg",
	caption: "Missulo, Isle de Luanda",
	micropost_id: 5
	},
	{
	img_url: "http://i.imgur.com/TrMxLRE.jpg",
	caption: "Mirador de Lua",
	micropost_id: 6
	}
	# {
	# img_url: "ross",
	# caption: "caption..."
	# }
	# {
	# img_url: "ross",
	# caption: "caption..."
	# }
	# {
	# img_url: "ross",
	# caption: "caption..."
	# }
	# {
	# img_url: "ross",
	# caption: "caption..."
	# }	
]	

image_data.each do |image|
	Image.create(image)
end