class CharactersController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @character = Character.new
  end

  def create
    @game = Game.find(params[:game_id])
    @character = Character.new(character_params)
    @character.game = @game
    if @character.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to game_path(@character.game)
  end

  private

  def character_params
    params.require(:character).permit(:name, :game_id, :photo)
  end
end
