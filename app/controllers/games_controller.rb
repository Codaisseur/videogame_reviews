class GamesController < ApplicationController
  before_filter :set_category

  def index
    @games = @category.games

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, games: @games } }
    end
  end

  def show
    @game = @category.games.find(params[:id])
  end

  def create
    @game = Game.new(game_params)
    @game.category = @category

    if @game.save
      redirect_to category_game_path(@category, @game), notice: "Game created successfully"
    else
      render :new
    end
  end

  protected

  def set_category
    @category = Category.find(params[:category_id])
  end
end
