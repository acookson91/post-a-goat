require 'rails_helper'
require 'capybara/rspec'

feature 'text messaging' do
  scenario 'sends a text' do
    visit '/'
    click_link 'Add a friend'
    fill_in 'Name', with: 'Shane'
    fill_in 'Phone number', with: '07498108082'
    click_button 'Add friend'
    click_button 'Goat bomb'
    expect(page).to have_content('Goat Sent')
  end
end
