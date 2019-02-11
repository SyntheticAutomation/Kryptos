class WelcomeController < ApplicationController

  def index
    @sc = Coin.get_siacoin
    @last_week = @sc.seven_day_change[0..3].to_f
    value = @sc.usd_value
    if value < 0.01
      @price = "#{(value * 100).round(2)} cents"
    else
      usd = "$ #{value.round(4)}"
      @price = usd
    end
    if params[:coin_input]
      input = params[:coin_input]
      @result = number_to_currency(input.to_f * value)
    end
  end

end
