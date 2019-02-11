require 'rails_helper'

describe CoinGeckoService do
  describe "coins" do
    it "retrieves siacoin" do
      sc = CoinGeckoService.retrieve_siacoin
      expect(sc[:name]).to eq("Siacoin")
    end
  end
end
