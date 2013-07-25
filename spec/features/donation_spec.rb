require 'spec_helper'

feature 'Guest donates to Kubmo' do
  VALID_CARD_NUMBER = '4242424242424242'

  scenario 'using a custom pledge amount' do
    visit new_donation_path

    fill_in_and_submit_donation_form

    expect(page).to have_content('Thank you for your donation')
    expect(Donation.last.amount).to eq 20
  end

  scenario 'stripe gem throws an exception' do
  end

  def fill_in_and_submit_donation_form
    fill_in 'Email', with: 'regina@meangirls.com'
    fill_in 'Donation Amount', with: '20'
    fill_in 'Credit Card Number', with: VALID_CARD_NUMBER
    fill_in 'Security Code on Card (CVV)', with: '911'
    select 'April', :from=> 'card_month'
    select '2015', :from=> 'card_year'
    click_button 'Donate'
  end
end
