get '/' do
  @all_pics = Photo.all
  erb :index
end

get '/log_in' do
  erb :log_in
end

get '/sign_up' do
  erb :sign_up
end
