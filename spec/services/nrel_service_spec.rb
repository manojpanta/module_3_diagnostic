require 'rails_helper'
describe NrelService do
  it 'exists' do
    facade = NrelService.new
    expect(facade).to be_a(NrelService)
  end
end

describe 'instance methods' do
  it '#get_stations returns all the stations' do
    WebMock.disable!
    facade = NrelService.new
    expect(facade.get_stations({q: 80260})).to be_a(Array)
    expect(facade.get_stations({q: 80260}).first).to have_key(:station_name)
    expect(facade.get_stations({q: 80260}).first).to have_key(:street_address)
    expect(facade.get_stations({q: 80260}).first).to have_key(:fuel_type_code)
    expect(facade.get_stations({q: 80260}).first).to have_key(:access_days_time)
  end
  it '#get_json returns all the all the stations in JSON format' do
    WebMock.disable!
    facade = NrelService.new
    expect(facade.get_json('/api/alt-fuel-stations/v1.json?zip=80260')).to be_a(Hash)
    expect(facade.get_json('/api/alt-fuel-stations/v1.json?zip=80260')).to have_key(:total_results)
  end
end
