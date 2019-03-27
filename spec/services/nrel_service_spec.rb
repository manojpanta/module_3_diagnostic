require 'rails_helper'
describe NrelService do
  it 'exists' do
    facade = NrelService.new
    expect(facade).to be_a(NrelService)
  end
end
