class SearchController < ApplicationController
  def index
    nation = params[:nation].sub(/_/, ' ')

    @nation_members = SearchFacade.nation_members(nation)
  end
end
