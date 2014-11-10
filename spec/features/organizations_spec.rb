require 'rails_helper'

feature 'Organizations' do

  scenario 'User attempts to create a new organization without a name' do
    visit root_path
    click_on "Organization"
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content "Name can't be blank"
  end
end
