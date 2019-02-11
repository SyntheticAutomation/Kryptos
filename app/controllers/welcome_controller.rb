class WelcomeController < ApplicationController

  def index
    @sc = Siacoin.genesis
    @last_week = @sc.seven_day_change[0..3].to_f
    value = @sc.usd_value
    value < 0.01 ? price_in_cents(value) : price_in_usd(value)
    set_result(value) if params[:coin_input]
  end

  def refresh
    @data = index
    respond_to do |format|
      format.js
    end
  end

  private

  def price_in_cents(value)
    @price = "#{(value * 100).round(2)} cents"
  end

  def price_in_usd(value)
    @price = "$ #{value.round(4)}"
  end

  def set_result(value)
    @result = number_to_currency(params[:coin_input].to_f * value)
  end

end
