class CoinGeckoService

  def initialize
    @connection = make_the_call
  end

  def make_the_call
    Faraday.new(url: "https://api.coingecko.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_uri(address)
    response = @connection.get(address) do |req|
      req.params['market_data'] = true
      req.params['sparkline'] = true
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def retrieve_coin_data(coin_name)
    get_uri("/api/v3/coins/#{coin_name}")
  end

  def self.retrieve_siacoin
    new.retrieve_coin_data("siacoin")
  end


  end
