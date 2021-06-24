require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'


feature 'Visitor signs up' do
  scenario 'with valid email and password' do
    sign_up_with('jean', 'elcaribou','valid@example.com' , '123456', '123456')
    expect(page).to have_content('Se déconnecter')
  end

  scenario 'with invalid email' do
    sign_up_with('jean', 'elcaribou','invalidexampl.com' , '123456', '123456')
    expect(page).to have_content('Se connecter')
  end

  scenario 'with blank password' do
    sign_up_with('jean', 'elcaribou','valide@example.com' , '', '')

    expect(page).to have_content('Se connecter')
  end

  def sign_up_with(first_name, last_name, email, password, password_confirmation)
    visit new_user_registration_path
    fill_in 'first_name', with: first_name, id:'first_name'
    fill_in 'last_name', with: last_name, id:'last_name'
    fill_in 'email', with: email, id:'email'
    fill_in 'password', with: password, id:'password'
    fill_in 'password_confirmation', with: password_confirmation, id:'password_confirmation'
    click_button 'sign_up', id: 'sign_up'
  end
end