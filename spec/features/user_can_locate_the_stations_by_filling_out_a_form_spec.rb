require 'rails_helper'

# describe "user can loacate stations" do
#   scenario "by filling out a form" do
#     it 'returns all the stations matching the request' do
#       visit "/"
#       save_and_open_page
#       within(".navbar") do
#         expect(page).to have_content("AltFuelFinder")
#         expect(page).to have_selector("input[value='Search by zip...']")
#       end
#     end
#   end
# end

require 'rails_helper'
feature "User can visit root page" do
  scenario "and view navbar contents" do
    WebMock.disable!
    visit "/"
    fill_in 'q', with: 80260
    click_on 'Locate'

    expect(current_path).to eq('/search')
  end
end

#
# As a user
# When I visit "/"
# And I fill in the search form with 80206 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see the total results of the stations that match my query.
# Then I should see a list of the 15 closest stations within 5 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And the stations should only be public, and not private, planned or temporarily unavailable.
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
# Collapse
