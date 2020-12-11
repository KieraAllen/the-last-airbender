class SearchController < ApplicationController

  def index
    fire_nation = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=fire+nation")

    @members = JSON.parse(fire_nation.body, symbolize_names: :true)
  end
end
