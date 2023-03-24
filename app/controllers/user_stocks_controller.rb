class UserStocksController < ApplicationController
  def create
    stock = Stock.check_db(params[:stock])

    if stock.blank?
      data = Stock.new_lookup(params[:stock])
      stock = Stock.new(name: data[:name], ticker: params[:stock])
      stock.save
    end
    @user_stock = UserStock.create(user: current_user, stock: stock)
    redirect_to my_portfolio_path
  end
end
