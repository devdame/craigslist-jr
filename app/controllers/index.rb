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

