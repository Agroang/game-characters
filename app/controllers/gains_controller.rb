class GainsController < ApplicationController
  def new
    @character = Character.find(params[:character_id])
    @gain = Gain.new
  end

  def create
    @character = Character.find(params[:character_id])
    # @skill = Skill.find(params[:skill_id])
    @gain = Gain.new(gain_params)
    # @gain.skill = @skill
    @gain.character = @character
    @game = Game.find(@gain.character.game.id)
    if @gain.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def destroy
    @gain = Gain.find(params[:id])
    @gain.destroy
    redirect_to game_path(@gain.character.game)
  end

  private

  def gain_params
    params.require(:gain).permit(:character_id, :skill_id)
  end
end
