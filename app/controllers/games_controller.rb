class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[game_params])
    @game.save
    redirect_to edit_game_path(@game)
  end

  private

  def game_params
    params.require(:game).permit(:name, :goal_score, :number, :player_id)
  end
end
