require 'rails_helper'

RSpec.describe CategoriesController, type: :routing do
  describe "GET /" do
    it "routes to categories#index" do
      expect(get: "/").to route_to("categories#index")
    end
  end
end
