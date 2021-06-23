require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'


feature 'Visitor signs in' do
  scenario 'with valid email and password' do
    user = User.create!(:first_name => 'jean',:last_name => 'test',:email => 'test@example.com', :password => 'f4k3p455w0rd')
    sign_in_with(user.email, user.password)
    expect(page).to have_content('Connexion réussie.')
  end


  def sign_in_with(email, password)
    visit new_user_session_path
    fill_in 'email', with: email, id:'email'
    fill_in 'password', with: password, id:'password'
    click_button 'sign_in', id: 'sign_in'
  end
end