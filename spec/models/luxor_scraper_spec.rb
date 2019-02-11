require 'rails_helper'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'pry'

describe LuxorScraper, type: :model do
  before(:each) do
    wallet = ENV['sc_wallet']
    @lux = LuxorScraper.new(wallet)
  end

  it 'exists' do
    expect(@lux).to be_an_instance_of LuxorScraper
  end

  describe 'instance methods' do

    it '.daily_earnings' do
      expect(@lux.daily_earnings.is_a?(Float)).to eq(true)
    end
  end
end
