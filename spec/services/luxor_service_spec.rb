require 'rails_helper'

describe LuxorService do
  describe "coins" do
    it "retrieves active miners" do
      sc = LuxorService.retrieve_miners
      expect(sc[:totalMiners].is_a?(Integer)).to eq(true)
    end
  end
end
