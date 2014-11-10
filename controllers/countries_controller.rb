###############
## countries ##
###############

get '/countries' do
	@countries = Country.all
	erb :"/countries/index"
end

get '/countries/new' do
	@countries = Country.all
	@microposts = Micropost.all
	@images = Image.all
	erb :"/countries/new"
end

get '/countries/:id' do
	@microposts = Micropost.all
	@country = Country.find(params[:id])
	@images = Image.all
	@tags = Tag.all
	erb :"/countries/show"
end