class GamesController < ApplicationController
  def new
    @game = Game.new
    3.times{ @game.points.build }
  end

  def create
    binding.pry
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
    else
      render json: {}
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, points_attributes: [:question, :order, :latitude, :longtitude])
  end
end
