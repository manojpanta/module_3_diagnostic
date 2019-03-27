class NrelFacade

  def initialize(params)
    @params = params
  end

  def stations
    service.get_stations(@params)
  end

  def service
    NrelService.new
  end
end
