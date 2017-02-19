require 'sinatra'

enable :sessions

get '/' do
	erb :get_name
end

post '/post_name' do
	session[:name] = params[:user_name]
    erb :get_location, :locals => {:name => session[:name]}
end

post '/post_location' do
	location = params[:user_location]
	"Your name is #{session[:name]} and your location is #{location}."
end