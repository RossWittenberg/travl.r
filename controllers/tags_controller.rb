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
	
# >> destroy existing tag <<
delete "/tags/:id" do
	tag = Tag.find(params[:id])
	tag.destroy
	redirect ("/tags")
end			

# # >> display form to make new tag <<		
# 	get "/tags/new" do
# 		erb :"/tags/new"
# 	end


