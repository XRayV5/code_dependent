require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

require_relative 'db_config'
require_relative 'models/dish'

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
  erb :new
end

post '/dishes' do
  # save the dish to database
  sql = "INSERT INTO dishes (name, image_url) VALUES ('#{ params[:name] }', '#{ params[:image_url] }');"

  run_sql(sql)

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







