###########
## image ##
###########

get '/images' do
	@images = Image.all
	@microposts = Micropost.all
	@countries = Country.all
	erb :"/images/index"
end

get '/images/new' do
	@images = Image.all
	@countries = Country.all
	@microposts = Micropost.all
	erb :"/images/new"
end

get '/images/:id' do
	@microposts = Micropost.all
	@countries = Country.all
	@image = Image.find(params[:id])
	erb :"/images/show"
end

# >> create new image <<		
post "/images" do
	image = Image.new(params[:image])
	if image.save	
		redirect ("/images/#{image.id}")
	else
		redirect ("/images")
	end		
end


# edit image details
get "/images/:id/edit" do
	@image = Image.find(params[:id])
	@countries = Country.all
	@microposts = Micropost.all
	erb :"/images/edit"
end	



put "/images/:id" do
  image = Image.find(params[:id])
  if image.update(params[:image])
  	redirect("/images/#{image.id}")
  end
end

	
# >> destroy existing image <<
delete "/images/:id/remove_image" do
	image = Image.find(params[:id])
	image.destroy
	redirect ("/images")
end			



