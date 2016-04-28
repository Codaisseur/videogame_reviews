class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    respond_to do |f|
      f.html
      f.json { render json: { categories: @categories } }
    end
  end
end
