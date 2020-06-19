class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to new_game_player_path(@game)
    else
      render 'new'
    end
  end

  def edit
    @players = Player.where(game_id: @game)
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :goal_score, :number)
  end
end
