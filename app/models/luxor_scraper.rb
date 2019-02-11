require 'nokogiri'
require 'open-uri'
require 'watir'
require 'pry'

class LuxorScraper

  attr_reader :wallet

  def initialize(wallet)
    @wallet = wallet
  end

  def scrape
    browser = Watir::Browser.new
    browser.goto "https://mining.luxor.tech/miners/SC/#{@wallet}"
    Nokogiri::HTML.parse(browser.html)
  end

  def find_72_hr_rewards
    last_3_day_rewards = scrape.css('ul')[4].children[4].children[1].children[0].to_s.chomp(" SC").to_f
  end

  def daily_earnings
    find_72_hr_rewards / 3
  end

end
