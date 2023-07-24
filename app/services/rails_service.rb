class RailsService
  def self.conn
    Faraday.new(url: "http://localhost:3000") do |faraday|
    end
  end

  def self.get_url(url)
    response = conn.get(url)
    try = JSON.parse(response.body, symbolize_names: true)
  end
end
