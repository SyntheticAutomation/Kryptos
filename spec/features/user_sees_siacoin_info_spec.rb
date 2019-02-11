require 'rails_helper'

describe "A visitor to our site" do
  it 'can see siacoin information' do
    visit '/'
    expect(page).to have_content("miners")
  end
end


# As a visitor to our app
# when I visit '/'
# I should see a heading for "Siacoin"
# And I should see the current siacoin price in the following format:
# if under 1 cent, ".02 cents", and if over 1 cent, "$0.01"
#
# I should also see a form
# Where I can enter the amount of siacoin I have
# and under that form I can see the value of my holdings of this coin in USD
#
# I should also see the performance of the coin's value over the last 7 days vs USD,
# for example "7 day performance: +2.59%"
# which should be green text if positive, and red text if negative.
