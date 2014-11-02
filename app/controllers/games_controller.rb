class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    binding.pry
    :show
  end

  def search
    @game = Game.find_by(:name => params["name"])
    if @game
      render 'search'
    end
  end
end
