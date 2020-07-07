class PlayersController < ApplicationController
  before_action :set_game, only: %I[new editscore updatescore]

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.game = Game.find(params[:game_id])
    @player.save
  end

  def editscore
    @players = Player.where(game: @game)
                     .order(:name, :id)
  end

  def updatescore
    set_player
    new_score = @player.current_score += score_params[:score_made].to_i
    @history = "#{@player.history}" + ",#{score_params[:score_made].to_i}"
    if @player.update(score_made: new_score, history: @history)
      redirect_to game_edit_players_path(@game)
    else
      @players = Player.where(game: @game)
      render :editscore, alert: "Your cocktail isn't complete !"
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_player
    @player = Player.find(params[:player_id])
  end

  def score_params
    params.require(:player).permit(:score_made)
  end

  def player_params
    params.require(:player).permit(:name, :game_id, :current_score, :score_made)
  end
end
