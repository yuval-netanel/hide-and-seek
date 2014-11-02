class GamesController < ApplicationController
  def new
    @game = Game.new
    3.times{ @game.points.build }
  end

  def create
    game = Game.create(game_params)
    redirect_to game
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    @game = Game.find_by(:name => params["name"])
    if @game
      render 'search'
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, points_attributes: [:question, :order, :latitude, :longtitude])
  end
end
