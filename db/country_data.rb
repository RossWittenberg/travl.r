require 'active_record'
ActiveRecord::Base.establish_connection({
	database: 'travelblog_db',
	adapter: 'postgresql'
})

require_relative '../models/country.rb'


Country.destroy_all

country_data = [
		{
		name: "Angola",
		region: "sub-Saharan Africa"
		},

		{
		name: "Brazil",
		region: "South America"
		},

		{
		name: "Croatia",
		region: "Western Europe"
		},

		{
		name: "Norway",
		region: "Scandinavia"
		},

		{
		name: "Denmark",
		region: "Scandinavia"
		}
]

country_data.each do |country|
	Country.create(country)
end