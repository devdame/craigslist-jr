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
