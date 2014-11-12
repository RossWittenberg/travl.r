#display micropost index page
get '/microposts' do
	@microposts = Micropost.all
	erb :"/microposts/index"
end	

# #display form to make new post 				
get "/microposts/new" do
	@countries = Country.all
	@tags = Tag.all
	@images = Image.all
	@authors = Author.all
	erb :"/microposts/new"
end	

# show page for single post
get "/microposts/:id" do
	@micropost = Micropost.find(params[:id])
	@images = Image.all
	@tags = Tag.all
	erb :"/microposts/show"
end

# create new post 
post "/microposts" do
	micropost = Micropost.new(params[:micropost])
	params[:tags].each do |tag_id|
		tag = Tag.find(tag_id)
		micropost.tags.push(tag)
	end
	params[:images].each do |image_id|
		image = Image.find(image_id)
		micropost.images.push(image)
	end	
	if micropost.save
		redirect ('/microposts/#{micropost.id}')
	end
end

# #display form to edit a post 
get "/microposts/:id/edit" do
	@micropost = Micropost.find(params[:id])
	@authors = Author.all
	@countries = Country.all
	@tags = Tag.all
	erb :"/microposts/edit"
end	
# remove a tag from a post
post "/microposts/:id/remove_tag" do
	micropost = Micropost.find(params[:id])
	tag = Tag.find(params[:tag_id])
	micropost.tags.destroy(tag)
	redirect "/microposts/#{micropost.id}"
end


# #edit exisiting post 
put '/microposts/:id' do
	micropost = Micropost.find(params[:id])
	micropost.update(params[:micropost])
	micropost.tags.destroy_all
	params[:tags].each do |tag_id|
		tag = Tag.find(tag_id)
		micropost.tags.push(tag)
	end
	redirect "/microposts/#{micropost.id}"
end

# #destroy existing post 
delete "/microposts/:id" do
	micropost = Micropost.find(params[:id])
	micropost.destroy
	redirect "/microposts"
end	