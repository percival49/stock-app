class Stock < ApplicationRecord
  def self.new_lookup(ticker)
    query = BasicYahooFinance::Query.new
    data = query.quotes(ticker)
    data[ticker]['postMarketPrice']
  end
end
