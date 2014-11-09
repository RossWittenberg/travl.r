LINK TO ERD: http://i.imgur.com/BqwfsLq.jpg

ROUTES:

##############
## homepage ##
##############

>> display hompage << 
	get "/" do
		erb :"home/home"
	end	

###############
## micropost ##
###############

#display all posts 
get "/microposts" do
	@microposts = Micropost.all
	erb :"/microposts/index"
end

#display one post 	
get "microposts/:id"
	@micropost = Micropost.find(params[:id])
	erb :"/microposts/show"
end

#display form to make new post 		
get "/microposts/new" do
	erb :"/microposts/new"
end

#create new post 		
post "/microposts" do
	micropost = Micropost.new(params[:micropost])
end

#display form to edit a post 
get "/microposts/:id/edit"
	@micropost = Micropost.find(params[:id])
	erb :"/microposts/edit"
end	

#edit exisiting post 
put "/micropsts/:id"
	micropost.update(params[:micropost])
end

#destroy existing post 
delete "/microposts/:id"
	micropost = Micropost.find(params[:micropost])
	micropost.destroy
end	

############
## author ##
############

>> display all authors <<
	get "/authors" do
		@authors = Author.all
		erb :"/authors/index"
	end

>> display one author <<	
	get "authors/:id"
		@author = Author.find(params[:id])
		erb :"/authors/show"
	end
	
>> display form to make new author <<		
	get "/authors/new" do
		erb :"/authors/new"
	end

>> create new author <<		
	post "/authors" do
		author = Author.new(params[:author])
	end

>> display form to edit a author <<
	get "/authors/:id/edit"
		@author = Author.find(params[:id])
		erb :"/authors/edit"
	end	

>> edit exisiting author <<
	put "/micropsts/:id"
		author.update(params[:author])
	end

>> destroy existing author <<
	delete "/authors/:id"
		author = Author.find(params[:author])
		author.destroy
	end	

#########
## tag ##
#########

>> display all tags <<
	get "/tags" do
		@tags = tag.all
		erb :"/tags/index"
	end

>> display one tag << (perhaps unnecessary?)	
	get "tags/:id"
		@tag = tag.find(params[:id])
		erb :"/tags/show"
	end
	
>> display form to make new tag <<		
	get "/tags/new" do
		erb :"/tags/new"
	end

>> create new tag <<		
	post "/tags" do
		tag = tag.new(params[:tag])
	end

>> display form to edit a tag << (perhaps unnecessary?)
	get "/tags/:id/edit"
		@tag = tag.find(params[:id])
		erb :"/tags/edit"
	end	

>> edit exisiting tag << (perhaps unnecessary?)
	put "/micropsts/:id"
		tag.update(params[:tag])
	end

>> destroy existing tag <<
	delete "/tags/:id"
		tag = tag.find(params[:tag])
		tag.destroy
	end			
