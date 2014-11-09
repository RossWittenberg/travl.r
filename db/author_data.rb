require 'active_record'
ActiveRecord::Base.establish_connection({
	database: 'travelblog_db',
	adapter: 'postgresql'
})

require_relative '../models/author.rb'


Author.destroy_all

author_data = [
	{
	username: "travler1",
	avatar_img_url: "http://www.eilireland.org/sites/all/themes/d7eil/images/default-user-avatar.png"
	},

	{
	username: "globetrotter34",
	avatar_img_url: "http://www.eilireland.org/sites/all/themes/d7eil/images/default-user-avatar.png"
	},

 	{
	username: "mega_travler47",
	avatar_img_url: "http://www.eilireland.org/sites/all/themes/d7eil/images/default-user-avatar.png"
	},

 	{
	username: "ramblr",
	avatar_img_url: "http://www.eilireland.org/sites/all/themes/d7eil/images/default-user-avatar.png"
	},

 	{
	username: "rossW",
	avatar_img_url: "http://www.eilireland.org/sites/all/themes/d7eil/images/default-user-avatar.png"
	}	
]	

author_data.each do |author|
	Author.create(author)
end


