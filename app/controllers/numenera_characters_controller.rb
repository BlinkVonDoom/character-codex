# frozen_string_literal: true

class NumeneraCharactersController < ApplicationController
  def index
    @numenera_characters = NumeneraCharacter.all
  end

  def show
    @numenera_character = NumeneraCharacter.find(params[:id])
  end

  def new
    @numenera_character = NumeneraCharacter.new
  end

  def create
    @numenera_character = NumeneraCharacter.new(numenera_character_params)

    if @numenera_character.save
      flash[:notice] = 'character created'
      redirect_to numenera_character_path(@numenera_character.id)
    else
      flash[:alert] = 'something went wrong'
      redirect_to root_path
    end
  end

  private

  def numenera_character_params
    params.require(:numenera_character).permit(:character_name, :character_focus, :character_descriptor, :character_type, :tier, :effort, :might_pool, :speed_pool, :intellect_pool).merge(user_id: current_user.id)
  end
end
