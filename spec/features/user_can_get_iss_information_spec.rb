require 'rails_helper'


RSpec.describe "As a visitor" do
  describe "and I visit the home page" do
    it  "I can get ISS's current location" do

      visit "/"

      within(".current-location") do
        expect(page).to have_content("Current Location:")
      end
    end

    it  "I can ISS estimated passover time and duration" do

      visit "/"

      within(".passover-time") do
        expect(page).to have_content("Duration:")
        expect(page).to have_content("Rise Time:")
      end
    end

    it "I can get details on individuals in space" do

      visit "/"
    #
    #     # click_on "See Astronauts"
    #     #
    #     # expect(current_path).to eq(root_path)
    #
      within(first(".astronaut")) do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Craft:")
      end
    end
  end
end
