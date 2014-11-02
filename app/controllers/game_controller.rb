class GameController < ApplicationController

  def search
    @game = Game.find_by(:name => params["name"])
    if @game
      render 'search'
    end
  end

end
