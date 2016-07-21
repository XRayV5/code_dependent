require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# the root - home page
get '/' do
  erb :index
end

get '/donate' do
  erb :donate
end

# route
get '/thank_you' do
  "thank you so much #{ params[:email] } for donating #{ params[:amount] }"
end

