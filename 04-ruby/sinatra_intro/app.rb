require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/' do
  # file = IO.read('index.html')
  # return file

  erb(:index)
end

get '/donate' do
  # if I add a @ in front of the variable
  # I can use it in my view template
  @money_in_bank = 5

  erb(:donate)
  # erb(:donate, locals: { money_in_bank: money_in_bank})
end


# request
get '/cookies' do
  # response
  "you get cronut"
end

get '/cheeseburger' do
  if params[:name] == 'dt'
    return "the price is free"
  else
    return "the price for cheese burger is $50"
  end
end

# request can have querystring
# sending extra info to the server
get '/hello' do
  # responing with whatever is in params
  # params.inspect

  return "hello there #{ params[:name] }"
end

get '/add' do
  # crappy calculator for adding 2 numbers

  # num1 and num2 through querystrings
  # return the sum of num1 and num2
  result = params[:num1].to_i + params[:num2].to_i 
  return "this result is #{ result } "  

end