require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  let(:category) { create(:category) }
  let(:games) { create_list(:game, 3, category: category) }

  describe "GET index" do
    it "assigns all Games to an instance var called @games" do
      get :index, category_id: category.to_param
      expect(assigns(:games)).to eq games
    end

    it "assigns the category to an instance var called @category" do
      get :index, category_id: category.to_param
      expect(assigns(:category)).to eq category
    end

    describe "category scope" do
      before { create(:game) }

      it "only assigns games in the current category" do
        get :index, category_id: category.to_param
        expect(assigns(:games)).to eq games
      end
    end
  end
end
