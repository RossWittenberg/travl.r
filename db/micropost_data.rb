require 'active_record'
ActiveRecord::Base.establish_connection({
	database: 'travelblog_db',
	adapter: 'postgresql'
})

require_relative '../models/micropost.rb'
require_relative '../models/country.rb'
require_relative '../models/author.rb'
require_relative '../models/image.rb'
require_relative '../models/tag.rb'

Micropost.destroy_all

micropost_data = [
		{
			date_posted: '07-14-2013',
			title: "vacation",
			content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.",
			city: "Cincinnati",
			country_id: 2,
			author_id: 3
		},

		{
			date_posted: '08-13-2012',
			title: "another vacation",
			content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Cras dapibus. Vivamus elementum semper nisi.",
			city: "Copenhagen",
			country_id: 4,
			author_id: 2
		},

		{
			date_posted: '03-11-2011',
			title: "spring break",
			content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.",
			city: "Oslo",
			country_id: 4,
			author_id: 3
		},

		{
			date_posted: '07-14-2013',
			title: "summer euro trip",
			content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penat.",
			city: "Dubrovnik",
			country_id: 3,
			author_id: 5
		}
	]	

micropost_data.each do |micropost|
	Micropost.create(micropost)
end

