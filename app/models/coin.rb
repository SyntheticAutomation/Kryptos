class Coin

  attr_reader :name, :usd_value, :image_url, :seven_day_change, :miners

  def initialize(attributes = {}, miners = {})
    @name = attributes[:name]
    @usd_value = attributes[:market_data][:current_price][:usd].round(4)
    @image_url = attributes[:image][:large]
    @seven_day_change = attributes[:market_data][:price_change_percentage_7d]
    @miners = miners[:totalMiners]
  end

  def self.get_siacoin
    coin_search = CoinGeckoService.retrieve_siacoin
    miners = LuxorService.retrieve_miners
    Coin.new(coin_search, miners)
  end

end
