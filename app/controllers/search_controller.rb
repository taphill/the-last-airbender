class SearchController < ApplicationController
  def index
    nation = params[:nation].sub(/_/, ' ')

    conn = Faraday.new('https://last-airbender-api.herokuapp.com/api/')

    response = conn.get("v1/characters?affiliation=#{nation}")

    # json = JSON.parse(response.body, symbolize_names: true)
    
    @nation_members = JSON.parse(response.body, symbolize_names: true) 
  end
end
