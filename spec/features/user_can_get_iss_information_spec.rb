require 'rails_helper'

feature "User can visit root page" do
  scenario "and get ISS's current location" do
    visit "/"
    within(".current-location") do
      expect(page).to have_content("Current Location:")
    end
  end

  feature "User can get time when it will pass over a location" do
    scenario "fill in latitude and longitue and submit" do
      visit '/'

      fill_in "latitude", with: "45"
      fill_in "latitude", with: "122.3"

      click_submit "Get Pass Over Time"

      expect(current_path).to eq(root_path)

      within('.passover-time')
      expect(page).to have_content("Duration: ")
      expect(page).to have_content("Rise Time:")
    end
  end

  feature "User get details on individuals in space" do
    scenario "click on see astronauts" do
      visit "/"

      click_on "See Astronauts"

      expect(current_path).to eq(root_path)

      within('.astronaut-1')
      expect(page).to have_content("Name: ")
      expect(page).to have_content("Craft:")
      end
    end
end
