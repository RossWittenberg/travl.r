# >> display all authors <<
get "/authors" do
	@authors = Author.all
	erb :'authors/index'
end

# >> display form to make new author <<		
get "/authors/new" do
	erb :"/authors/new"
end
	
# >> display one author <<	
get "/authors/:id" do
	@author = Author.find(params[:id])
	@microposts = Micropost.all
	erb :"/authors/show"
end

# >> create new author <<		
post "/authors" do
	author = Author.new(params[:author])
	if author.save
		redirect ("/authors")
	else
		redirect ("/authors/new")	
	end	
end

# >> display form to edit a author <<
get "/authors/:id/edit" do
	@author = Author.find(params[:id])
	erb :"/authors/edit"
end	

# >> edit exisiting author <<
put "/authors/:id" do
	author = Author.find(params[:id])
	if author.update(params[:author])
		redirect("/authors/#{author.id}")
	else
		redirect("/authors/#{author.id}/edit")
	end
end


# >> destroy existing author <<
delete "/authors/:id" do
	author = Author.find(params[:id])
	if author.destroy
		redirect("/authors")
	else
		redirect("/authors/#{author.id}/edit")
	end
end	