require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'yahoofinance'


# localhost:4567/stock_picker
get './stock_picker' do
  @ticker = params[:ticker]
  @quote = params[:quote]
  @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
  erb :quote
end





