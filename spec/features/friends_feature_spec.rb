require 'rails_helper'

feature 'friends' do
  context 'no friends have been added' do
    scenario 'prompts user to add a friend' do
      visit '/'
      expect(page).to have_content('You have no friends!')
      expect(page).to have_link('Add a friend')
    end
   end

   scenario 'user can add a friend' do
    sign_up
    click_link 'Add a friend'
    fill_in 'Name', with: 'Simon'
    fill_in 'Phone number', with:'0750 7404740'
    click_button 'Add friend'
    expect(page).to have_content('Simon')
   end


end
