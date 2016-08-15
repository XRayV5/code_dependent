require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/user'

enable :sessions

helpers do

  def logged_in?
    if User.find_by(id: session[:user_id])
      return true
    else
      return false
    end
  end

  def current_user
    User.find(session[:user_id])
  end

end

def run_sql(sql)
  # connect to database
  db = PG.connect(dbname: 'goodfoodhunting')
  # run the sql an asign results to variable
  results = db.exec(sql)
  # close connection
  db.close
  # return results
  results
end

get '/' do
  @dishes = Dish.all
  erb :index
end

# http verb + path = route
get '/dishes/new' do
  if !logged_in?
    redirect to '/session/new'
  end

  erb :new
end

post '/dishes' do

  if !logged_in?
    redirect to '/session/new'
  end

  # save the dish to database
  # sql = "INSERT INTO dishes (name, image_url) VALUES ('#{ params[:name] }', '#{ params[:image_url] }');"
  # run_sql(sql)
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.user_id = current_user.id # the creator of the dish is the current user
  dish.save

  # db = PG.connect(dbname: 'goodfoodhunting')
  # db.exec(sql)
  # db.close
  redirect to '/'
end

get '/dishes/:id' do
  # use the id to select a dish from the dishes table
  sql = "select * from dishes where id = #{ params[:id] };"

  # db = PG.connect(dbname: 'goodfoodhunting')
  @dish = run_sql(sql)[0]
  # db.close
  
  erb :show 
end

get '/dishes/:id/edit' do
  sql = "select * from dishes where id = #{ params[:id] };"
  db = PG.connect(dbname: 'goodfoodhunting')
  @dish = db.exec(sql)[0]
  db.close
  erb :edit
end


put '/dishes/:id' do
  # lets grab existing dish
  # params[:id]
  # lets build our sql to update dish
  sql = "UPDATE dishes SET name = '#{ params[:name] }', image_url = '#{ params[:image_url] }' WHERE id = #{ params[:id] };"

  run_sql(sql)

  redirect to "/dishes/#{ params[:id] }"
end

delete '/dishes/:id' do
  sql = "DELETE FROM dishes WHERE id = #{ params[:id] };"
  run_sql(sql)

  redirect to "/"
end


get '/session/new' do # getting the form
  erb :login
end

post '/session' do # creating the resource
  # find the user with the email
  user = User.find_by(email: params[:email])
  # check the user with the password
  if user && user.authenticate(params[:password])
    # good to go
    session[:user_id] = user.id
    redirect to '/'
  else
    # show the login template
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to '/session/new'
end

get '/my_dishes' do
  @dishes = current_user.dishes
  erb :my_dishes
end










