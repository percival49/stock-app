class StocksController < ApplicationController
  def search
    @stocks = current_user.stocks
    if params[:stock] != nil && params[:stock].strip().length > 0
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        redirect_to my_portfolio_path
      end
    else
      redirect_to my_portfolio_path
    end
  end
end