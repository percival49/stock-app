class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks

  validates :name, :ticker, presence: true

  def self.new_lookup(ticker)
    query = BasicYahooFinance::Query.new
    data = query.quotes(ticker) 
    begin
      response = {
        name: data[ticker]['longName'],
        currentPrice: data[ticker]['bid'],
        result: true
      }
    rescue => exception
      return nil
    end
  end

  def self.check_db(ticker_symbol)
    where(ticker: ticker_symbol).first
  end
end

# response = { result: false }