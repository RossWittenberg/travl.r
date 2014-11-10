###########
## image ##
###########

get '/images' do
	@images = Image.all
	erb :"/images/index"
end

get '/images/new' do
	@images = Image.all
	@microposts = Micropost.all
	erb :"/images/new"
end

get '/images/:id' do
	@microposts = Micropost.all
	@image = Image.find(params[:id])
	erb :"/images/show"
end

# # >> create new image <<		
post "/images" do

	image = Image.new(params[:image])
	if image.save	
		redirect ("/images/#{image.id}")
	else
		redirect ("/images")
	end		

end
	



# # >> destroy existing image <<
# delete "/images/remove_image/:id" do
# 	image = Image.find(params[:id])
# 	image.destroy
# 	redirect ("/images")
# end			



