class AvatarService
  def self.conn
    Faraday.new('https://last-airbender-api.herokuapp.com/api/')
  end

  def self.nation_member_data(nation)
    response = conn.get("v1/characters?affiliation=#{nation}")

    JSON.parse(response.body, symbolize_names: true) 
  end
end
