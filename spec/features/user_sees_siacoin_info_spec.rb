require 'rails_helper'

describe "A visitor to our site" do
  it 'can see siacoin information' do
    visit '/'

    expect(page).to have_content("Siacoin")
    expect(page).to have_css("#price")
    expect(page).to have_css("#last-week")
    expect(page).to have_css("#icon")
    expect(page).to have_css("#miners")
    expect(page).to have_content("7d change")

    expect(page).to have_css(".form")
    fill_in 'coin_input', with: 500
    click_on "Calculate"
    expect(page).to have_content "value of your coins"
  end
end
