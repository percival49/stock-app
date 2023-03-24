class UsersController < ApplicationController
  def my_portfolio
    @stocks = current_user.stocks
    
  end

  def remove_stock
    a = current_user.id
    b = params[:id]
    stock = UserStock.where(user_id: a, stock_id: b).first
    stock.destroy
    redirect_to my_portfolio_path
    
  end
end
