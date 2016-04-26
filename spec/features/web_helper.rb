def sign_up(username: 'testperson',
            email: 'test@example.com',
            password: 'testtest',
            confirm: 'testtest'
            )
  visit '/'
  click_link('Sign up')
  fill_in('Username', with: username)
  fill_in('Email', with: email)
  fill_in('Password', with: password)
  fill_in('Password confirmation', with: confirm)
  click_button "Sign up"

end

def sign_in(email: 'test@example.com',
            password: 'testtest'
            )
    click_link('Sign in')
    fill_in('Email', with: email)
    fill_in('Password', with: password)
    click_button 'Log in'
end
