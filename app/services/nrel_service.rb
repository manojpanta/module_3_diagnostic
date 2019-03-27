class NrelService
  def get_stations(params)
    get_json("api/alt-fuel-stations/v1.json?zip=#{params[:q]}")[:fuel_stations]
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    response = Faraday.new(url: "https://developer.nrel.gov/") do |faraday|
      faraday.headers['X-API-KEY'] = ENV['NREL_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end






  # https://developer.nrel.gov


end
