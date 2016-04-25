require 'rails_helper'
require 'capybara/rspec'

feature 'text messaging' do
  scenario 'sends a text' do
    visit '/'
    fill_in 'name', with: 'Shane'
    fill_in 'number', with: '07498108082'
    click_button 'Send Goat'
    expect(page).to contain('Goat Sent')
  end
end
