require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

# connecting to database
require_relative 'db_config'

# mapping class to table
require_relative 'models/guest'

get '/' do
  @guests = Guest.all
  erb :index
end

post '/guests' do
  guest = Guest.new
  guest.name = params[:name]
  guest.save
  redirect to '/'
end

delete '/guests/:id' do
  guest = Guest.find( params[:id] )
  guest.destroy
  redirect to '/'
end
