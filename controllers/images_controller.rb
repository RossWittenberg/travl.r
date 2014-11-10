###########
## image ##
###########


get '/images' do
	@images = Image.all
	erb :"/images/index"
end

# # >> create new image <<		
post "/images" do
	@microposts = Micropost.all
	image = Image.new(params[:image])
	if image.save	
		redirect ("/images/#{image.id}")
	else
		redirect ("/images")	

end
	

# # >> destroy existing image <<
# delete "/images/remove_image/:id" do
# 	image = Image.find(params[:id])
# 	image.destroy
# 	redirect ("/images")
# end			

get '/images/:id' do
	@microposts = Micropost.all
	@image = image.find(params[:id])
	erb :"/images/show"
end


