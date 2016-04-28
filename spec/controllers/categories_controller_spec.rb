require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  describe "GET index" do
    let(:categories) { create_list(:category, 3) }

    it "assigns all categories to @categories" do
      get :index
      expect(assigns(:categories)).to eq categories
    end
  end
end
