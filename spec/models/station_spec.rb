require 'rails_helper'
describe Station do
  it 'exists' do
    station = Station.new({})
    expect(station).to be_a(Station)
  end

end
describe 'instance methods' do
  it 'returns attributes' do
    station = Station.new({station_name: 'Station',
                          fuel_type_code: 1232,
                          access_days_time: '24 hours',
                          street_address: 'this is address'})
    expect(station.name).to eq('Station')
    expect(station.address).to eq('this is address')
    expect(station.fuel_type).to eq(1232)
    expect(station.access_time).to eq('24 hours')
  end
end
