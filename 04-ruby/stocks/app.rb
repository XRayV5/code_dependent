require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'


get '/' do
  if params[:stock] != nil && params[:stock] != ""
    result = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:stock])
    @last_trade = result[params[:stock]].lastTrade
  else
    @last_trade = ""
  end

  erb :index
end

