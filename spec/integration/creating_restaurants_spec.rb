require 'spec_helper'

feature "Creating new restaurants" do
  scenario "can create a new restaurant" do
    visit "/"
    fill_in "Name", with: "Veggie Grill"
    fill_in "Address", with: "446 Terry Ave N"
    fill_in "City", with: "Seattle"
    fill_in "State", with: "WA"
    fill_in "Zip code", with: "98109"
    click_button "Add new restaurant"
    page.should have_content("Restaurant added successfully")
  end
end
