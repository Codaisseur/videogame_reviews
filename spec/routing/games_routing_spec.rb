require 'rails_helper'

RSpec.describe GamesController, type: :routing do
  describe "Get /categories/:category_id/games" do
    let(:category) { create(:category) }

    it "should route to games#index" do
      route = "/categories/#{category.to_param}/games"
      expect(get route).to route_to "games#index", category_id: category.to_param
    end
  end
end
