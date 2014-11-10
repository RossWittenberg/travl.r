#########
## tag ##
#########


get '/tags' do
	@tags = Tag.all
	erb :"/tags/index"
end


# >> create new tag <<		
post "/tags" do
	tag = Tag.create(params[:tag])
	redirect ("/tags")
end
	
post "/tags/:id/add_micropost" do
	tag = Tag.find(params[:id])
	micropost = Micropost.find(params[:tag_id])
	tag.microposts.push(micropost)
	redirect ("/tags/#{tag.id}")
end

# >> destroy existing tag <<
delete "/tags/remove_tag/:id" do
	tag = Tag.find(params[:id])
	tag.destroy
	redirect ("/tags")
end			


get '/tags/:id' do
	@microposts = Micropost.all
	@tag = Tag.find(params[:id])
	erb :"/tags/show"
end

