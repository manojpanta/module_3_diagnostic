class NrelFacade
  def initialize(params)
    @params = params
  end

  def stations
    @stations = service.get_stations(@params).map do|station_data|
      Station.new(station_data)
    end
  end

  def service
    NrelService.new
  end
end
