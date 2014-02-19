get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories' do
  erb :categories
end

get '/create' do
  erb :create
end

get '/categories/:category' do
	@posts = Category.where(name: params[:category])[0].posts
  erb :post
end

get '/update/:url' do
  @post = Post.where(url: params[:url])[0]
  erb :secret
end

post '/confirm_new_post' do
  params[:category_id] = Category.where(name: params[:category_name])[0].id
  params[:url] = rand(1000000000000000)
  params.delete("category_name")
  Post.create(params)
  redirect to("/update/#{params[:url]}")
end

post '/update_post' do
  params[:category_id] = Category.where(name: params[:category_name])[0].id
  params.delete("category_name")
  Post.where(url: params[:url])[0].update_attributes(params)
  erb :index
end


