# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of people who live in the Fire Nation. (i.e. there are 97 total)
# And I should see a list with the detailed information for all 97 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies (if they have any)
# - Any affiliation that the member has (if they have any)

require "rails_helper"

RSpec.describe "As a user" do
  describe "when I visit '/'" do
    it "can select Fire Nation from select field, click 'Search For Members', and go to the '/search' page" do
      visit "/"
      select "Fire Nation"
      click_on "Search For Members"

      expect(current_path).to eq("/search")
    end
  end
end
