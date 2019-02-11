require 'rails_helper'


describe Siacoin, type: :model do
  describe 'class methods' do
    it '.genesis' do
      sc = Siacoin.genesis
      expect(sc.name).to eq("Siacoin")
      expect(sc.miners.class).to eq(Integer)
    end
  end
end
