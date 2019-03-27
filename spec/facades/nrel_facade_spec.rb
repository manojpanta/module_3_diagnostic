require 'rails_helper'
describe NrelFacade do
  it 'exists' do
    facade = NrelFacade.new({})
    expect(facade).to be_a(NrelFacade)
  end
end
describe 'instance methods' do
  it '#stations returns all the stations' do
    WebMock.disable!
    facade = NrelFacade.new({q: 80260})
    expect(facade.stations).to be_a(Array)
    expect(facade.stations.count).to eq(2)
  end
end
