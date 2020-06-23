class PlayersController < ApplicationController
  before_action :set_game, only: [:new, :edit, :update]

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.game = Game.find(params[:game_id])
    @player.save
  end

  def edit
    @players = Player.where(game_id: @game)
  end

  def update
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def player_params
    params.require(:player).permit(:name, :game_id)
  end
end
