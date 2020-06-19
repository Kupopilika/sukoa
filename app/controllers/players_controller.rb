class PlayersController < ApplicationController
  def new
    @player = Player.new
    @game = Game.find(params[:game_id])
  end

  def create
    @player = Player.new(player_params)
    @player.game = Game.find(params[:game_id])
    if @player.save
    else
      render 'create'
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :game_id)
  end
end
