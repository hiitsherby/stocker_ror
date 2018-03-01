class HomeController < ApplicationController
  def index
    if params[:id] == ''
      @nothing = 'Hey you forget to enter symbol'
    elsif
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue 
          @error = 'The stock symbol not exist, please try again.'
        end
      end
    end
  end

  def about
  end
end
