class LuxorService

  def initialize
    @connection = make_the_call
  end

  def make_the_call
    Faraday.new(url: "https://mining.luxor.tech") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_uri(address)
    response = @connection.get(address)
    JSON.parse(response.body, symbolize_names: true)
  end

  def retrieve_siacoin_data
    get_uri("/API/SC/stats/")
  end

  def self.retrieve_miners
    new.retrieve_siacoin_data
  end
end
