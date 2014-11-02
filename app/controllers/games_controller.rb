class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    binding.pry
    :show
  end


end
