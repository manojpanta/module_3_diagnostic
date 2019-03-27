require 'rails_helper'
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
