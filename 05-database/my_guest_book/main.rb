require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  # connect to database
  db = PG.connect(dbname: 'guestbook')
  # read from the table using SQL SELECT statement
  # assign results return to @guests
  # @guests = [{'name' => 'mum'}, {'name' => 'dad'}]
  @guests = db.exec('SELECT * FROM guests;')
  # close the database close
  db.close
  erb :index
end
