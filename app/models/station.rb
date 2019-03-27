class Station
  def initialize(data)
    @name = data[:station_name]
    @address = data[:street_address]
    @fuel_type = data[:fuel_type_code]
    @access_time = data[:access_days_time]
  end
end
