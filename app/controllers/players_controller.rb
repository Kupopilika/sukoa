class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[player_params])
    @player.game_id = @game
    @player.save
  end

  private

  def player_params
    params.require(:player).permit(:name, :game_id)
  end
end
