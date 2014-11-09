
#display micropost index page
get '/microposts' do
	@microposts = Micropost.all
	erb :"/microposts/index"
end	

# #display form to make new post 				
get "/microposts/new" do
	@countries = Country.all
	@authors = Author.all
	erb :"/microposts/new"
end	

# show page for single post
get "/microposts/:id" do
	@micropost = Micropost.find(params[:id])
	@images = Image.all
	erb :"/microposts/show", :layout => true
end

# create new post 
post "/microposts" do
	micropost = Micropost.new(params[:micropost])
	if micropost.save
		redirect ('/microposts/index')
	else 
		redirect ('/micropost/new')
	end		
end

# #display form to edit a post 
get "/microposts/:id/edit" do
	@micropost = Micropost.find(params[:id])
	@authors = Author.all
	@countries = Country.all
	erb :"/microposts/edit"
end	

# #edit exisiting post 
put "/microposts/:id" do
	micropost = Micropost.find(params[:id])
	if micropost.update(params[:micropost])
		redirect("/microposts/#{micropost.id}")
	else
		redirect("/microposts/#{micropost.id}/edit")	
	end	
end

# #destroy existing post 
delete "/microposts/:id" do
	micropost = Micropost.find(params[:id])
	micropost.destroy
end	