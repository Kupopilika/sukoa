class PlayersController < ApplicationController
  def new
    @player = Player.new
    @game = Game.find(params[:game_id])
  end

  def create
    @player = Player.new(player_params)
    @player.game_id = @game
    @player.save!
  end

  private

  def player_params
    params.require(:player).permit(:name, :game_id)
  end
end
